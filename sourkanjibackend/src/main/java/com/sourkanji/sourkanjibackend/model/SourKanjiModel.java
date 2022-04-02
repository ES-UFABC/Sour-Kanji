package com.sourkanji.sourkanjibackend.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_card")
public class SourKanjiModel extends Deck{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idCard;

	public SourKanjiModel(String deckName) {
		super(deckName);
		// TODO Auto-generated constructor stub
	}

	public Long getIdCard() {
		return idCard;
	}

	public void setIdCard(Long idCard) {
		this.idCard = idCard;
	}
	@Column
	private List<CardModel> cardListKanji;
	
	@Column
	private List<CardModel> cardListVocabulary;
	
	@Column
	private List<CardModel> cardListPhrase;
	
	@Column
	private List<CardModel> cardListVerb;
	
	public String getDeckName() {
		return null;
		
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
 


	
}
