//
//  Idiom.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 26/10/2020.
//

import SwiftUI

struct Idiom: Identifiable, Hashable {
    var id: Int
    var name: String
    var categoryCard: Category
    var image: String
    
    var isFavourite: Bool
    
    var meaningText: String
    var meaningTradu: String
    var historyText: String
    var linkapple: String
    var linkspotify: String
    var linkyoutube: String
    
    
    enum Category: String {
        case feelings = "Feelings"
        case action = "Actions & Behaviours"
        case situations = "Situations"
        case all = "All"
    }
}
