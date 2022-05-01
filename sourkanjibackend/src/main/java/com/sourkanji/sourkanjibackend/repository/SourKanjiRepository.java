package com.sourkanji.sourkanjibackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourkanji.sourkanjibackend.model.SourKanjiDeck;

public interface SourKanjiRepository extends JpaRepository<SourKanjiDeck,Long> {

	//void deleteById(Long id);

}
