package com.sourkanji.sourkanjibackend.repository;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourkanji.sourkanjibackend.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	public Optional<Usuario>  findByNomeUsuarioContainingIgnoreCase(String nomeCompleto);

	public Optional<Usuario> findByEmailUsuario(String emailUsuario);

}
