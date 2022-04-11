package com.sourkanji.sourkanjibackend.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "card")
public class Card {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCard;

    @ManyToOne(cascade = CascadeType.ALL)
    private Deck deck;

    @ManyToOne(cascade = CascadeType.ALL)
    private Usuario usuario;
}
