package com.sourkanji.sourkanjibackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourkanji.sourkanjibackend.model.PerfomanceModel;

public interface PerfomanceRepository extends JpaRepository<PerfomanceModel, Long> { 

}
