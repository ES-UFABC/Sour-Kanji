package com.sourkanji.sourkanjibackend.model;

import javax.persistence.Entity;

@Entity
public class SourKanji extends Deck {

	// @ManyToOne(cascade = CascadeType.ALL)
	// private Usuario usuario;

	// @Column
	// private List<Card> cardListKanji;

	// @Column
	// private List<Card> cardListVocabulary;

	// @Column
	// private List<Card> cardListPhrase;

	// @Column
	// private List<Card> cardListVerb;

	public SourKanji(String deckName) {
		super("Sour Kanji");
		// this.cardListKanji = new ArrayList<>();
		// this.cardListVocabulary = new ArrayList<>();
		// this.cardListPhrase = new ArrayList<>();
		// this.cardListVerb = new ArrayList<>();
	}

	// public List<Card> getCardListKanji() {
	// 	return cardListKanji;
	// }

	// public void setCardListKanji(List<Card> cardListKanji) {
	// 	this.cardListKanji = cardListKanji;
	// }

	// public List<Card> getCardListVocabulary() {
	// 	return cardListVocabulary;
	// }

	// public void setCardListVocabulary(List<Card> cardListVocabulary) {
	// 	this.cardListVocabulary = cardListVocabulary;
	// }

	// public List<Card> getCardListPhrase() {
	// 	return cardListPhrase;
	// }

	// public void setCardListPhrase(List<Card> cardListPhrase) {
	// 	this.cardListPhrase = cardListPhrase;
	// }

	// public List<Card> getCardListVerb() {
	// 	return cardListVerb;
	// }

	// public void setCardListVerb(List<Card> cardListVerb) {
	// 	this.cardListVerb = cardListVerb;
	// }

}
