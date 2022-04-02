package com.sourkanji.sourkanjibackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourkanji.sourkanjibackend.model.SourKanji;

public interface DeckRepository extends JpaRepository<SourKanji,Long> {

	//void deleteById(Long id);

}
