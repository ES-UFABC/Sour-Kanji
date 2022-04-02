package com.sourkanji.sourkanjibackend.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_card")
public class SourKanjiModel extends Deck{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idCard;


	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("usuario")
	private List<SourKanjiModel> card;

	public Long getIdPostagem() {
		return idCard;
	}
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("usuario")
	private List<CardModel> cardListKanji;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("usuario")
	private List<CardModel> cardListVocabulary;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("usuario")
	private List<CardModel> cardListPhrase;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("usuario")
	private List<CardModel> cardListVerb;
	
	public String getDeckName() {
		return null;
		
	}

	public SourKanjiModel(String deckName) {
		super(deckName);
		// TODO Auto-generated constructor stub
	}

	

	public void setIdCard(Long idCard) {
		this.idCard = idCard;
	}
	
	public List<CardModel> getCardListKanji() {
		return cardListKanji;
	}

	public void setCardListKanji(List<CardModel> cardListKanji) {
		this.cardListKanji = cardListKanji;
	}

	public List<CardModel> getCardListVocabulary() {
		return cardListVocabulary;
	}

	public void setCardListVocabulary(List<CardModel> cardListVocabulary) {
		this.cardListVocabulary = cardListVocabulary;
	}

	public List<CardModel> getCardListPhrase() {
		return cardListPhrase;
	}

	public void setCardListPhrase(List<CardModel> cardListPhrase) {
		this.cardListPhrase = cardListPhrase;
	}

	public List<CardModel> getCardListVerb() {
		return cardListVerb;
	}


	public void setCardListVerb(List<CardModel> cardListVerb) {
		this.cardListVerb = cardListVerb;
	}

	public Long getIdCard() {
		return idCard;
 


	}	
}
