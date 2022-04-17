package com.sourkanji.sourkanjibackend.controller;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Optional;

import com.sourkanji.sourkanjibackend.model.Login;
import com.sourkanji.sourkanjibackend.model.Usuario;
import com.sourkanji.sourkanjibackend.service.UsuarioService;

import org.hibernate.Hibernate;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

@ExtendWith(SpringExtension.class)
@SpringBootTest
class IntegrationTests {

    @Autowired
    UsuarioController usuarioController;

    @Autowired
    DeckController deckController;

    @Autowired
	private UsuarioService usuarioService;

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

        String token = response.getBody().getToken();
        assertNotNull(token);
        assertTrue(usuarioService.Autenticar(token).isPresent());

        assertEquals(deckController.getDecks(token).size(), 1);

        long id = usuarioController.getByEmail("teste@gmail.com").getBody().get().getIdUsuario();
        usuarioController.delete(id);
        assertEquals(Optional.empty(), usuarioController.getByEmail("teste@gmail.com").getBody());
    }
}