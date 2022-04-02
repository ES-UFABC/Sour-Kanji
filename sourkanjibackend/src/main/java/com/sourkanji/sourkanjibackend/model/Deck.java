package com.sourkanji.sourkanjibackend.model;

import java.sql.Time;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

//@Entity
//@Table(name = "deck")
public abstract class Deck {


		private String deckName;
		private List<CardModel> cardList;
		private Time learnFrequency;
		private Time reviewFrequency;
		private Time Time;
		
		
		public Deck() {
			super();
		}
		public Deck(String deckName) {
			super();
			this.deckName = deckName;
		}
		public String getDeckName() {
			return deckName;
		}
		public void setDeckName(String deckName) {
			this.deckName = deckName;
		}
		public List<CardModel> getCardList() {
			return cardList;
		}
		public void setCardList(List<CardModel> cardList) {
			this.cardList = cardList;
		}
		public Time getLearnFrequency() {
			return learnFrequency;
		}
		public void setLearnFrequency(Time learnFrequency) {
			this.learnFrequency = learnFrequency;
		}
		public Time getReviewFrequency() {
			return reviewFrequency;
		}
		public void setReviewFrequency(Time reviewFrequency) {
			this.reviewFrequency = reviewFrequency;
		}
		public Time getTime() {
			return Time;
		}
		public void setTime(Time time) {
			Time = time;
		}
	
}

		


	
