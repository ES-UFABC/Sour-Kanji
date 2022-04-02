package com.sourkanji.sourkanjibackend.controller;

import com.sourkanji.sourkanjibackend.model.UserLoginModel;
import com.sourkanji.sourkanjibackend.model.Usuario;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;

@ExtendWith(SpringExtension.class)
@SpringBootTest
class IntegrationTests {

    @Autowired
    UsuarioController usuarioController;

    @Test
    public void testIntegration() {
        Usuario usuario = new Usuario();
        usuario.setNomeCompleto("Nome Sobrenome");
        usuario.setEmailUsuario("teste@gmail.com");
        usuario.setSenhaUsuario("12345");

        UserLoginModel user = new UserLoginModel();
        user.setEmailUsuario("teste@gmail.com");
        user.setSenhaUsuario("12345");

        usuarioController.Post(usuario);
        Usuario usuarioResultado = usuarioController.getByEmail("teste@gmail.com").getBody().get();
        assertEquals("Nome Sobrenome", usuarioResultado.getNomeCompleto());
        assertEquals("teste@gmail.com", usuarioResultado.getEmailUsuario());

        ResponseEntity<UserLoginModel> response = usuarioController.Autentication(Optional.of(user));
        assertEquals(200, response.getStatusCode().value());
        assertEquals("Nome Sobrenome", response.getBody().getNomeCompleto());
        assertEquals("teste@gmail.com", response.getBody().getEmailUsuario());

        long id = usuarioController.getByEmail("teste@gmail.com").getBody().get().getIdUsuario();
        usuarioController.delete(id);
        assertEquals(Optional.empty(), usuarioController.getByEmail("teste@gmail.com").getBody());
    }

}