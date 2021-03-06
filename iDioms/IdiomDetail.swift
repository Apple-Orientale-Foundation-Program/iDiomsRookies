//
//  IdiomDetail.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 26/10/2020.
//

import SwiftUI

struct IdiomDetail: View {
    
    // IdiomView var
    @State private var isFavourite = false
   
    @State var idiom: Idiom
    
    @EnvironmentObject var data: Data
    
    var idiomIndex: Int {
        data.idiom.firstIndex(where: { $0.id == idiom.id })!
    }
    
    //body
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                MeaningCardView(meaningTradu: idiom.meaningTradu, meaningText: idiom.meaningText, idiom: idiom)
                HistoryCardView(historyText: idiom.historyText, idiom: idiom)
                SongCardView (idiom: idiom)
              Spacer()
            }
        }
        .navigationTitle("\(idiom.name)")
        .font(.subheadline)
        .navigationBarItems(trailing:
                                
                                Button(action: {
                                    self.data.idiom[self.idiomIndex].isFavourite.toggle()
        }) {
                                    if self.data.idiom[self.idiomIndex]
                                        .isFavourite == true {
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("ourorange"))
                                    } else {
                                        Image(systemName: "star")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("ourorange"))
                                    }
                                })
    }
}

struct IdiomDetail_Previews: PreviewProvider {
    static var previews: some View {
 IdiomDetail(idiom: idioms[0])
        
    }
}
