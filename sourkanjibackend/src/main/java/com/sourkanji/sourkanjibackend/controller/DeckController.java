package com.sourkanji.sourkanjibackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sourkanji.sourkanjibackend.model.SourKanjiDeck;
import com.sourkanji.sourkanjibackend.repository.DeckRepository;

@RestController
@RequestMapping("/home")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class DeckController {

	@Autowired
	private DeckRepository repository;

		@DeleteMapping("/{id}")
		public void removeCard(@PathVariable Long id) {
			repository.deleteById(id);
		}
		
		@PostMapping
		public ResponseEntity<SourKanjiDeck> post (@RequestBody SourKanjiDeck postagem) {
			return ResponseEntity.status(HttpStatus.CREATED)
					.body(repository.save(postagem));
		}
		
		@PutMapping
		public ResponseEntity<SourKanjiDeck> put (@RequestBody SourKanjiDeck postagem) {
			return ResponseEntity.ok(repository.save(postagem));
		}
		
}
