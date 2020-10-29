//
//  AllView.swift
//  iDioms
//
//  Created by Francesca Russo on 29/10/2020.
//

import SwiftUI
import UIKit

struct AllView: View {
    var categoryName: String
    var items: [Idiom]
    
    @State var searchText = ""
    @State var isSearching = false
    
  
    var body: some View {
        VStack{
        SearchBar(searchText: $searchText)
            List() {
                ForEach((self.items).filter({
                    "\($0)".contains(searchText.lowercased()) || searchText.isEmpty
                }), id: \.self) { x in
                    NavigationLink(destination: IdiomDetail(idiom: x))
                    {
                        ListRow(idiom: x)
                        
                    }
                 
                }
              
        }
            .navigationBarTitle(categoryName)
    }

    }
}

struct AllView_Previews: PreviewProvider {
    static var previews: some View {
        AllView(categoryName: "", items: Array(idioms.prefix(60))
        )
   }
}
