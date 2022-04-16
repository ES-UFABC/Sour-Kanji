package com.sourkanji.sourkanjibackend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sourkanji.sourkanjibackend.model.Deck;
import com.sourkanji.sourkanjibackend.model.Login;
import com.sourkanji.sourkanjibackend.model.SourKanjiCard;
import com.sourkanji.sourkanjibackend.model.SourKanjiDeck;
import com.sourkanji.sourkanjibackend.model.Usuario;
import com.sourkanji.sourkanjibackend.repository.UsuarioRepository;

import java.io.BufferedReader;
import java.io.FileReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.commons.codec.binary.Base64;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Service
public class UsuarioService {
	@Autowired
	private UsuarioRepository repository;

	public Optional<Usuario> CadastrarUsuario(Usuario usuario) {
		if (repository.findByEmailUsuario(usuario.getEmailUsuario()).isPresent())
			return null;
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String senhaEncoder = encoder.encode(usuario.getSenhaUsuario());
		usuario.setSenhaUsuario(senhaEncoder);

		List<Deck> deckList = new ArrayList<Deck>();
		SourKanjiDeck sourKanjiDeck = new SourKanjiDeck();

		try (BufferedReader br = new BufferedReader(new FileReader("Kanji.csv"))) {
			String line;
			while ((line = br.readLine()) != null) {
				String[] values = line.split("\t");
				String ideogram = values[0];
				String kunYomi = values[1];
				String onYomi = values[2];
				String meaning = values[3];
				String mnemonic = values[4];
				String story2 = values[5];
				String story3 = values[6];
				String vocabulary = values[7];
				SourKanjiCard sourKanjiCard = new SourKanjiCard(ideogram, meaning, onYomi, kunYomi, mnemonic, vocabulary);
				sourKanjiDeck.getCardList().add(sourKanjiCard);
			}
		} catch(Exception e){
			System.err.println("Não foi possível adicionar SourKanjiCard.");
		}

		deckList.add(sourKanjiDeck);
		usuario.setDecks(deckList);

		return Optional.of(repository.save(usuario));
	}

	public Optional<Login> Logar(Optional<Login> user) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		Optional<Usuario> usuario = repository.findByEmailUsuario(user.get().getEmailUsuario());
		if (usuario.isPresent()) {
			if (encoder.matches(user.get().getSenhaUsuario(), usuario.get().getSenhaUsuario())) {
				String auth = user.get().getEmailUsuario() + ":" + user.get().getSenhaUsuario();
				byte[] encodedAuth = Base64.encodeBase64(auth.getBytes(Charset.forName("US-ASCII")));
				String authHeader = "Basic " + new String(encodedAuth);
				user.get().setToken(authHeader);
				user.get().setNomeUsuario(usuario.get().getNomeUsuario());
				return user;
			}
		}
		return null;

	}

}
