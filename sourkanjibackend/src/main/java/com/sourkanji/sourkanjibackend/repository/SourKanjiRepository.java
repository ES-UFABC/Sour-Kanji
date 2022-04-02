package com.sourkanji.sourkanjibackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourkanji.sourkanjibackend.model.SourKanjiModel;

public interface SourKanjiRepository extends JpaRepository<SourKanjiModel,Long> {

	//void deleteById(Long id);

}
