package com.sourkanji.sourkanjibackend.controller;
import com.sourkanji.sourkanjibackend.model.Login;
import com.sourkanji.sourkanjibackend.model.Usuario;
import org.hibernate.Hibernate;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

@ExtendWith(SpringExtension.class)
@SpringBootTest
class IntegrationTests {

    @Autowired
    UsuarioController usuarioController;

    @Test
    public void contextLoads() {
    }

    @Test
    @Transactional
    public void testIntegration() {
        Usuario usuario = new Usuario();
        usuario.setNomeUsuario("Nome Sobrenome");
        usuario.setEmailUsuario("teste@gmail.com");
        usuario.setSenhaUsuario("12345");

        Login user = new Login();
        user.setEmailUsuario("teste@gmail.com");
        user.setSenhaUsuario("12345");

        usuarioController.Post(usuario);
        Usuario usuarioResultado = usuarioController.getByEmail("teste@gmail.com").getBody().get();
        assertEquals("Nome Sobrenome", usuarioResultado.getNomeUsuario());
        assertEquals("teste@gmail.com", usuarioResultado.getEmailUsuario());
        Hibernate.initialize(usuarioResultado.getDecks());
        assertEquals(usuarioResultado.getDecks().size(), 1);
        Hibernate.initialize(usuarioResultado.getDecks().get(0).getCardList());
        assertNotEquals(usuarioResultado.getDecks().get(0).getCardList().size(), 0);

        ResponseEntity<Login> response = usuarioController.Autentication(Optional.of(user));
        assertEquals(200, response.getStatusCode().value());
        assertEquals("Nome Sobrenome", response.getBody().getNomeUsuario());
        assertEquals("teste@gmail.com", response.getBody().getEmailUsuario());

        long id = usuarioController.getByEmail("teste@gmail.com").getBody().get().getIdUsuario();
        usuarioController.delete(id);
        assertEquals(Optional.empty(), usuarioController.getByEmail("teste@gmail.com").getBody());
    }

}