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
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(idiom: Idiom(id: 6, name: "ciao", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "exx", meaningTradu: "", historyText: "", linkapple: "", linkspotify: "", linkyoutube: ""))
    }
}
