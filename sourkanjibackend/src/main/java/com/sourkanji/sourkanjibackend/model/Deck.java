package com.sourkanji.sourkanjibackend.model;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "deck")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class Deck {

	@ManyToOne(cascade = CascadeType.ALL, optional = false)
    private Usuario usuario;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idDeck;
	
	@OneToMany(mappedBy = "deck")
	@JsonIgnoreProperties({"deck"})
	private List<Card> cardList;

	@Column
	private String deckName;

	@Column
	private int dailyCardsLearnLimit;

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Long getIdDeck() {
		return idDeck;
	}

	public void setIdDeck(Long idDeck) {
		this.idDeck = idDeck;
	}

	public int getDailyCardsLearnLimit() {
		return dailyCardsLearnLimit;
	}

	public void setDailyCardsLearnLimit(int dailyCardsLearnLimit) {
		this.dailyCardsLearnLimit = dailyCardsLearnLimit;
	}

	@Column
	private int dailyCardsReviewLimit;

	public Deck(String deckName) {
		this.deckName = deckName;
		this.cardList = new ArrayList<>();
	}

	public String getDeckName() {
		return deckName;
	}

	public void setDeckName(String deckName) {
		this.deckName = deckName;
	}

	public List<Card> getCardList() {
		return cardList;
	}

	public void setCardList(List<Card> cardList) {
		this.cardList = cardList;
	}


	public int getDailyCardsReviewLimit() {
		return dailyCardsReviewLimit;
	}

	public void setDailyCardsReviewLimit(int dailyCardsReviewLimit) {
		this.dailyCardsReviewLimit = dailyCardsReviewLimit;
	}

	//Pra que serve esse método? Auto gerado pela IDE?
	@Override
	public String toString() {
		return "Deck [deckName=" + deckName + ", cardList=" + cardList + ", dailyCardsLearnLimit=" + dailyCardsLearnLimit
				+ ", getDeckName()=" + getDeckName()+ ", getCardList()=" + getCardList() + ", dailyCardsLearnLimit()=" + getDailyCardsLearnLimit() + "getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
