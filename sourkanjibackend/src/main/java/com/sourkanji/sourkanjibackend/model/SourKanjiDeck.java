package com.sourkanji.sourkanjibackend.model;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class SourKanjiDeck extends Deck {
		
	@OneToMany(mappedBy = "deck", targetEntity = Card.class)
	@JsonIgnoreProperties({"deck"})
	private List<SourKanjiCard> sourKanjiCardList;

	@OneToMany(mappedBy = "deck", targetEntity = Card.class)
	@JsonIgnoreProperties({"deck"})
	private List<SourVerbCard> sourVerbCardList;

	@OneToMany(mappedBy = "deck", targetEntity = Card.class)
	@JsonIgnoreProperties({"deck"})
	private List<SourVocabularyCard> sourVocabularyCardList;

	public SourKanjiDeck() {
		super("Sour Kanji");
	}

}
