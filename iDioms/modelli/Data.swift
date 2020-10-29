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
    Idiom(id: 0, name: "Dare una mano", categoryCard: Idiom.Category.action, image: "action 1", isFavourite: false, meaningText: "Adoro Luca, è sempre pronto a dare una mano nei momenti di bisogno! \n I like Luca! He is always ready to lend a hand in times of need!", meaningTradu: "To lend a hand", historyText: "During the Roman Empire, thieves were punished with the cut of their hands. Many of these hands weren’t buried but used for decoration, and became a sacred symbol.", linkapple: "https://apple.co/2HJ44V3", linkspotify: "https://open.spotify.com/track/0lH5rCS0zHhzrSWPStwqeL?si=nxBURQWEQyWFEi2QhVwv7g", linkyoutube: "https://www.youtube.com/watch?v=C6dpQWnRII0"),
    
    
    Idiom(id: 1, name: "Prendere il due di picche", categoryCard: Idiom.Category.feelings, image: "dubbio 1", isFavourite: false, meaningText: "Non è venuto all’appuntamento, ho preso un due di picche.\n He didn’t come to the date, he dumped me up.", meaningTradu: "To answer negatively to a specific request, perhaps even dismissing a suitor in an unkind way.", historyText: "The idiom comes from the card game context. Card game players know very well that the two of spades is the least valuable card in the whole deck and it can help throw out the player by directly eliminating him.", linkapple: "https://apple.co/2HA3lWB", linkspotify: "https://open.spotify.com/track/1Ldhm2MyyZnj0ueRad0awa?si=dk-Tjn_pR8O7Ja8mBMvtsw", linkyoutube: "https://www.youtube.com/watch?v=aiKMo_kdKHc"),
    
    
    Idiom(id: 2, name: "Piovere sul bagnato", categoryCard: Idiom.Category.situations, image: "situa 1", isFavourite: false, meaningText: "Oggi ho rotto la mia tazza preferita, ho macchiato la camicia nuova e ho perso le chiavi, come si dice “piove sempre sul bagnato \n Today I broke my favorite cup, I stained my new shirt and I lost my keys, as they say it never rains but it pours", meaningTradu: "Unpleasant events or, on the contrary, pleasant ones, happen to those who are already living in abundance. It never rains but it pours.", historyText: "This idiom comes from Giovanni Pascoli's Prose : Piove sul bagnato: lagrime su sangue, sangue su lagrime", linkapple: "https://apple.co/3jGPBG9", linkspotify: "https://open.spotify.com/track/1BnS2eNjACY50sYAsgQd61?si=DH83vnfJTiOQIc_pHMnDVA", linkyoutube: "https://www.youtube.com/watch?v=XF8faDstJnA"),
    
    Idiom(id: 3, name: "Non c'è 2 senza 3", categoryCard: Idiom.Category.feelings, image: "", isFavourite: false, meaningText: "Sicuramente tornerà, non c’è due senza tre! \n He will definitely come back, there is not two without three!", meaningTradu: "TGood things come in threes, there is not two without three: if something has already happened twice, it is easier for it to happen a third time than it will not happen again.", historyText: "The idiom probably relates to ancient superstitions based on magic numbers, influenced by the fact that three is considered the perfect number: three are the persons of the Holy Trinity, three are the Magi who visited Christ child, three are the dimensions of the world in which we live, etc.", linkapple: "https://apple.co/3mxa4z6", linkspotify: "https://open.spotify.com/track/5ZUeBvBEH8hpdLMW3yCmHb?si=_VCVZ3CYTAyVQk2cRgsg8g", linkyoutube: "https://www.youtube.com/watch?v=4Rp6netehE4"),
    
    
    Idiom(id: 4, name: "Lacrime di coccodrillo", categoryCard: Idiom.Category.feelings, image: "", isFavourite: false, meaningText: "Matteo ha fatto qualcosa che non avrebbe dovuto fare, adesso piange le sue lacrime di coccodrillo davanti ai suoi genitori per evitare di finire nei guai! \n Matthew has done something he shouldn't have, now he is crying crocodile tears in front of his parents to avoid getting into trouble!", meaningTradu: "Who cries crocodile tears is the one who commits a bad deed on purpose and then pretends to regret it.", historyText: "It derives from the myth that crocodiles cry after having killed and eaten their preys: it is said that this happens only when these big predators eat human preys, or when the females devour their young ones.", linkapple: "https://apple.co/3kKmpje", linkspotify: "https://open.spotify.com/track/7GmSHlC22EiSqdIwTFXaLV?si=11ksVLNyQMih9-UbbEh37w", linkyoutube: "https://www.youtube.com/watch?v=t-FeU3zDvoA"),
    
    Idiom(id: 5, name: "Rompere il ghiaccio", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "Parlare di libri è un gran modo per rompere il ghiaccio con le ragazze. \n Talking about books is a great way to break the ice with girls.", meaningTradu: "Unlock an atmosphere of discomfort and embarrassment, specifically related to the first meeting with a person; the one who breaks the ice is the first person who can start the conversation or address a topic on which anyone had never dared to intervene before.", historyText: "The origin of this idiom probably comes from the custom of boatmen to use pickaxes and maces to break the ice and then be able to navigate the icy waters of rivers and seas.", linkapple: "https://apple.co/3e8s5kq", linkspotify: "https://open.spotify.com/track/66tVtoFKxaV62FBk5ihSPM?si=JIn21SHSQT67pBTYd0ju0w", linkyoutube: "https://www.youtube.com/watch?v=UtGId5KlSZU"),
    
    Idiom(id: 6, name: "Notte in bianco", categoryCard: Idiom.Category.situations, image: "", isFavourite: false, meaningText: "Maria ha passato la notte in bianco perché sua figlia non smetteva di piangere.\n Mary spents a sleepless night because her daughter would not stop crying.", meaningTradu: "Spend the night without sleeping, all-nighter, sleepless night", historyText: "The idiom refers to a typical custom of the Medieval age, when the aspiring knights were preparing for the investiture ceremony.  They spent the night before this sacred moment praying and fasting, dressed completely in white.", linkapple: "https://apple.co/3oAGIBO", linkspotify: "https://open.spotify.com/track/3SDJvaXqt3pJS4lbLcv93G?si=a-7vAJkZTEmkRizIphFtNQ", linkyoutube: "https://www.youtube.com/watch?v=PoPOuP3dPM8")
]




