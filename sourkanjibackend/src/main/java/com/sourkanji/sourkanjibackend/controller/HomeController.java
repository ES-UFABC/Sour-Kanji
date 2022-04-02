package com.sourkanji.sourkanjibackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sourkanji.sourkanjibackend.repository.PerfomanceRepository;

@RestController
@RequestMapping("/home")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class HomeController {

	@Autowired
	private PerfomanceRepository repository;
}
