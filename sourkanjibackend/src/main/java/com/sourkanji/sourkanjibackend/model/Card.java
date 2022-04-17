package com.sourkanji.sourkanjibackend.model;
import java.sql.Blob;
import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "card")
public class Card {

    public Card(String cardFront, String cardBack) {
		this.cardFront = cardFront;
		this.cardBack = cardBack;
	}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCard;

    @ManyToOne(cascade = CascadeType.ALL, optional = false)
    private Deck deck;

    @Column
	private Time Time;

    @Column
    private String cardFront;

    @Column
    private String cardBack;

    @Column
    private String image;

    @Column
    private Blob sound;

    public Long getIdCard() {
        return idCard;
    }

    public void setIdCard(Long idCard) {
        this.idCard = idCard;
    }

    public Deck getDeck() {
        return deck;
    }

    public void setDeck(Deck deck) {
        this.deck = deck;
    }

    public Time getTime() {
        return Time;
    }

    public void setTime(Time time) {
        Time = time;
    }

    public String getCardFront() {
        return cardFront;
    }

    public void setCardFront(String cardFront) {
        this.cardFront = cardFront;
    }

    public String getCardBack() {
        return cardBack;
    }

    public void setCardBack(String cardBack) {
        this.cardBack = cardBack;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Blob getSound() {
        return sound;
    }

    public void setSound(Blob sound) {
        this.sound = sound;
    }
    
    //TODO: +additionalFields: Map<String: String>
}
