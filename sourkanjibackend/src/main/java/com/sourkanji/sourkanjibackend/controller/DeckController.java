package com.sourkanji.sourkanjibackend.controller;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import com.sourkanji.sourkanjibackend.model.Deck;
import com.sourkanji.sourkanjibackend.repository.DeckRepository;
import com.sourkanji.sourkanjibackend.service.UsuarioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/deck")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class DeckController {

	@Autowired
	private UsuarioService usuarioService;
	@Autowired
	private DeckRepository repository;

	@GetMapping("/")
	public List<Deck> getDecks(@RequestHeader("Authorization") String token) {
		Optional<Long> userId = usuarioService.Autenticar(token);
		if (!userId.isPresent())
			return Collections.emptyList();
		return repository.findAllByUsuarioIdUsuario(userId.get());
	}

	@GetMapping("/{id}")
	public void getDeck(@PathVariable Long id) {
		repository.getById(id);
	}

	@DeleteMapping("/{id}")
	public void removeDeck(@PathVariable Long id) {
		repository.deleteById(id);
	}

	// @PostMapping
	// public ResponseEntity<SourKanjiDeck> post(@RequestBody SourKanjiDeck
	// postagem) {
	// return ResponseEntity.status(HttpStatus.CREATED)
	// .body(repository.save(postagem));
	// }

	// @PutMapping
	// public ResponseEntity<SourKanjiDeck> put(@RequestBody SourKanjiDeck postagem)
	// {
	// return ResponseEntity.ok(repository.save(postagem));
	// }

}
