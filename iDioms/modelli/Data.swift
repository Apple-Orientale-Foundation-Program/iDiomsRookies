//
//  Data.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 26/10/2020.
//

import SwiftUI
import Combine

final class Data: ObservableObject {
    @Published var idiom = idioms
    @Published var showFavouriteOnly = false
    
}
let idioms: [Idiom] = [
    Idiom(id: 0, name: "Dare una mano", categoryCard: Idiom.Category.action, image: "action 1", isFavourite: false, meaningText: "Adoro Luca, è sempre pronto a dare una mano nei momenti di bisogno! \n I like Luca! He is always ready to lend a hand in times of need!", meaningTradu: "To lend a hand", historyText: "During the Roman Empire, thieves were punished with the cut of their hands. Many of these hands weren’t buried but used for decoration, and became a sacred symbol.", linkapple: "", linkspotify: "", linkyoutube: ""),
    Idiom(id: 1, name: "Prendere il due di picche", categoryCard: Idiom.Category.feelings, image: "dubbio 1", isFavourite: false, meaningText: "Non è venuto all’appuntamento, ho preso un due di picche.\n He didn’t come to the date, he dumped me up.", meaningTradu: "To answer negatively to a specific request, perhaps even dismissing a suitor in an unkind way.", historyText: "The idiom comes from the card game context. Card game players know very well that the two of spades is the least valuable card in the whole deck and it can help throw out the player by directly eliminating him.", linkapple: "", linkspotify: "", linkyoutube: ""),
    Idiom(id: 2, name: "Piovere sul bagnato", categoryCard: Idiom.Category.situations, image: "situa 1", isFavourite: false, meaningText: "Oggi ho rotto la mia tazza preferita, ho macchiato la camicia nuova e ho perso le chiavi, come si dice “piove sempre sul bagnato \n Today I broke my favorite cup, I stained my new shirt and I lost my keys, as they say it never rains but it pours", meaningTradu: "Unpleasant events or, on the contrary, pleasant ones, happen to those who are already living in abundance. It never rains but it pours.", historyText: "This idiom comes from Giovanni Pascoli's Prose : Piove sul bagnato: lagrime su sangue, sangue su lagrime", linkapple: "", linkspotify: "", linkyoutube: ""),
    Idiom(id: 3, name: "Toccare il cielo con un dito", categoryCard: Idiom.Category.all, image: "", isFavourite: false, meaningText: "Sto toccando il cielo con un dito, mi ha chiesto di uscire con lui!", meaningTradu: "To touch the sky with a finger, to walk on air/on clouds, to be very happy", historyText: "The idiom literally means to touch the sky with a finger as it used to have a holy meaning. It was used during the time of Cicerone (a Roman Empire lawyer, writer, and orator) in his famous works (in latin digito coelum). The expression has been later spread among the working class to mean happiness.", linkapple: "", linkspotify: "", linkyoutube: ""),
    Idiom(id: 4, name: "Toccare il cielo con un dito", categoryCard: Idiom.Category.feelings, image: "dubbio 1", isFavourite: false, meaningText: "Sto toccando il cielo con un dito, mi ha chiesto di uscire con lui!", meaningTradu: "To touch the sky with a finger, to walk on air/on clouds, to be very happy", historyText: "The idiom literally means to touch the sky with a finger as it used to have a holy meaning. It was used during the time of Cicerone (a Roman Empire lawyer, writer, and orator) in his famous works (in latin digito coelum). The expression has been later spread among the working class to mean happiness.", linkapple: "", linkspotify: "", linkyoutube: ""),
    Idiom(id: 5, name: "Toccare il cielo con un dito", categoryCard: Idiom.Category.situations, image: "situa 1", isFavourite: false, meaningText: "Sto toccando il cielo con un dito, mi ha chiesto di uscire con lui!", meaningTradu: "To touch the sky with a finger, to walk on air/on clouds, to be very happy", historyText: "The idiom literally means to touch the sky with a finger as it used to have a holy meaning. It was used during the time of Cicerone (a Roman Empire lawyer, writer, and orator) in his famous works (in latin digito coelum). The expression has been later spread among the working class to mean happiness.", linkapple: "", linkspotify: "", linkyoutube: "")
    
]
