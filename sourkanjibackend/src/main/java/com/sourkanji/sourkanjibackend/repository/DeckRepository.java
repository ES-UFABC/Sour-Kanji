package com.sourkanji.sourkanjibackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

import com.sourkanji.sourkanjibackend.model.Deck;

public interface DeckRepository extends JpaRepository<Deck,Long> {

	List<Deck> findAllByUsuarioIdUsuario(Long id);

}
