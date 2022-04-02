package com.sourkanji.sourkanjibackend.model;

import java.util.List;

public class SourKanjikModel extends Deck{

	public SourKanjikModel(String deckName) {
		super(deckName);
		// TODO Auto-generated constructor stub
	}

	private List<CardModel> cardListKanji;
	private List<CardModel> cardListVocabulary;
	private List<CardModel> cardListPhrase;
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
