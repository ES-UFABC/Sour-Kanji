package com.sourkanji.sourkanjibackend.controller;

import com.sourkanji.sourkanjibackend.repository.UsuarioRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest
public class StandaloneControllerTests {

    @Autowired
    UsuarioController usuarioController;

    @MockBean
    UsuarioRepository repository;

    @MockBean
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Test
    void getAll() throws Exception {

    }

    @Test
    void getById() {
    }

    @Test
    void getByNomeCompleto() {
    }

    @Test
    void getByEmail() {
    }

    @Test
    void put() {
    }

    @Test
    void autentication() throws Exception {
    }
}