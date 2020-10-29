//
//  HistoryCard.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct HistoryCardView: View {
    @State private var showHistoryDetails = false
    @State var isPresented2: Bool = false
    @State var historyText: String
    @State var idioma: Idiom
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 375, height: 200)
                .foregroundColor(.white)
            
            VStack(alignment: .leading){
                HStack {
                    
                    Text("History")
                        .font(.custom("SF Pro Rounded Bold", size:30))
                        .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                        .padding(.leading)
                    Spacer()
                    
                    
                    Button(action: {
                        self.isPresented2.toggle()
                    }) {
                        Image(systemName: "arrowtriangle.down.fill")
                            .foregroundColor(.orange)
                            .shadow(radius: 10)
                            .padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 0))}
                    
                    .sheet(isPresented: $isPresented2) {
                        ModalHistoryView(idioma: Idiom (id: 0, name: "bb", categoryCard: Idiom.Category.action, image: "bb", isFavourite: false, meaningText: "bb", meaningTradu: "bb", historyText: "bb", linkapple: "", linkspotify: "", linkyoutube: ""))
                    }
                    
                    .padding(.trailing)
                }
                Spacer()
                
                HStack {
                    Text(historyText)
                        .font(.custom("SF Pro Rounded Regular", size:20))
                        .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                        .lineLimit(4)
                        .padding(.leading)
                }
                Spacer()
            }
            .padding(.top)
        }
        .frame(width: 350, height: 200, alignment: .center)
        .padding(.top)
        
    }
}
struct HistoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryCardView(historyText: "esempiostoria", idioma: Idiom(id: 0, name: "", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "", meaningTradu: "", historyText: "", linkapple: "", linkspotify: "", linkyoutube: ""))
    }
}
