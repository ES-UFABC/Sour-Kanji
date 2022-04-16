package com.sourkanji.sourkanjibackend.controller;
import java.util.Optional;
import com.sourkanji.sourkanjibackend.model.Login;
import com.sourkanji.sourkanjibackend.model.Usuario;
import com.sourkanji.sourkanjibackend.repository.UsuarioRepository;
import com.sourkanji.sourkanjibackend.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/usuario")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class UsuarioController {
	
	@Autowired
	private UsuarioRepository repository;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/{id}")
	public ResponseEntity<Usuario> getById(@PathVariable Long id) {
		return repository.findById(id).map(usuario -> ResponseEntity.ok(usuario))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/usuario/{nomeUsuario}")
	public ResponseEntity<Optional<Usuario>> getByNomeCompleto(@PathVariable String nomeCompleto){
		return ResponseEntity.ok(repository.findByNomeUsuarioContainingIgnoreCase(nomeCompleto));
	}

	@GetMapping("usuario/{emailUsuario}")
	public ResponseEntity<Optional<Usuario>> getByEmail(@PathVariable String emailUsuario){
		return ResponseEntity.ok(repository.findByEmailUsuario(emailUsuario));
	}
	
	@PutMapping
	public ResponseEntity<Usuario> put (@RequestBody Usuario usuario) {
		return ResponseEntity.ok(repository.save(usuario));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable Long id) {
		repository.deleteById(id);
	}
	
	@PostMapping("/logar")
	public ResponseEntity<Login> Autentication(@RequestBody Optional<Login> user) {
		return usuarioService.Logar(user).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.status(HttpStatus.UNAUTHORIZED).build());
	}
	
	@PostMapping("/cadastrar")
	public ResponseEntity<Usuario> Post(@RequestBody Usuario usuario) {
		Optional<Usuario> user = usuarioService.CadastrarUsuario(usuario);
		try {
			return ResponseEntity.ok(user.get());
		} catch (Exception e) {
			return ResponseEntity.badRequest().build();
		}
	}
}
