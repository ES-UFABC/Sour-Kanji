package com.sourkanji.sourkanjibackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sourkanji.sourkanjibackend.service.UsuarioService;


@RestController
@RequestMapping("/usuario")
public class UsuarioController {


	@Autowired
	private UsuarioService usuarioService;
}
