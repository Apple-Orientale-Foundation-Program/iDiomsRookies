//
//  ModalHistoryView.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct ModalHistoryView: View {
 
    @State var isPresented2: Bool = false
    @State var idiom: Idiom
    
       var body: some View {
        
            //qua il testo completo
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
        VStack(alignment: .leading) {
                    Text("\(idiom.name)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        
            Text("\(idiom.historyText)")
                .font(.title3)
                .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
           }
   }
}

struct ModalHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ModalHistoryView(idiom: Idiom(id: 0, name: "HHHH", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "", meaningTradu: "", historyText: "blabla", linkapple: "", linkspotify: "", linkyoutube: ""))
    }
}
