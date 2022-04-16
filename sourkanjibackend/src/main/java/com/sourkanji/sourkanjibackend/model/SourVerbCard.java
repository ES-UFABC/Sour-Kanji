package com.sourkanji.sourkanjibackend.model;

import javax.persistence.Entity;

@Entity
public class SourVerbCard extends Card {

    public SourVerbCard(String cardFront, String cardBack, String cardAnswer) {
        super(cardFront, cardBack);
    }

}
