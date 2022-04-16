package com.sourkanji.sourkanjibackend.model;
import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class SourKanjiCard extends Card {

    @Column
    String cardOnYomi;

    @Column
    String cardKunYomi;

    @Column
    String mnemonic;

    @Column
    String vocabulary;

    public String getVocabulary() {
        return vocabulary;
    }

    public void setVocabulary(String vocabulary) {
        this.vocabulary = vocabulary;
    }

    public SourKanjiCard(String cardIdeogram,  String meaning, String cardOnYomi, String cardKunYomi, String mnemonic, String vocabulary) {
        super(cardIdeogram, meaning);
    }

    public String getCardOnYomi() {
        return cardOnYomi;
    }

    public void setCardOnYomi(String cardOnYomi) {
        this.cardOnYomi = cardOnYomi;
    }

    public String getCardKunYomi() {
        return cardKunYomi;
    }

    public void setCardKunYomi(String cardKunYomi) {
        this.cardKunYomi = cardKunYomi;
    }

    public String getMnemonic() {
        return mnemonic;
    }

    public void setMnemonic(String mnemonic) {
        this.mnemonic = mnemonic;
    }

}
