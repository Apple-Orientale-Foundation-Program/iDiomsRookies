//
//  MyFavouriteList.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct MyFavouriteList: View {
    
    @State var searchText = ""
    @State var isSearching = false
    @EnvironmentObject private var data: Data
    
    var body: some View {
        
            List() {
                ForEach(data.idiom) { x in
                    
                    if self.data.showFavouriteOnly || x.isFavourite
                    {
                        NavigationLink(
                            destination: IdiomDetail(idiom: x)
                                .environmentObject(self.data)
                        ) {
                            ListRow(idiom: x)
                        }
                    }
                }

              
        }
            .navigationBarItems(trailing:
                                        Image(systemName: "bookmark.fill")
                                            .resizable()
                                            .foregroundColor(.orange)
                                            .frame(width: 20, height: 30)
                                    )
            .navigationBarTitle("MyFavourite")
            .foregroundColor( Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
    }
}

struct MyFavouriteList_Previews: PreviewProvider {
    static var previews: some View {
        MyFavouriteList()
            .environmentObject(Data())
    }
}
