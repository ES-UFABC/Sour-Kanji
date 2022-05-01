package com.sourkanji.sourkanjibackend.model;

import javax.persistence.Entity;

@Entity
public class SourVocabularyCard extends Card {

    public SourVocabularyCard(String cardFront, String cardBack, String cardAnswer) {
        super(cardFront, cardBack);
    }

}
