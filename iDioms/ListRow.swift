//
//  ListRow.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 26/10/2020.
//

import SwiftUI

struct ListRow: View {
    var idiom: Idiom
    
    var body: some View {
        Text("\(idiom.name)")
            .fontWeight(.bold)
            .foregroundColor( Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(idiom: Idiom(id: 6, name: "ciao", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "", meaningTradu: "", historyText: "", linkapple: "", linkspotify: "", linkyoutube: ""))
    }
}
