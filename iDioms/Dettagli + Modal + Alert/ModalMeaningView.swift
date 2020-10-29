//
//  ModalMeaningView.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct ModalMeaningView: View {
    @State var isPresented1: Bool = false
    @State var idioma: Idiom
    
       var body: some View {
    
            // qua è tutto il testo completo
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
        VStack(alignment: .leading) {
                    Text("\(idioma.name)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        
                    
            Text("\(idioma.meaningText)")
                .font(.title3)
                .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
           }
       }
}
   struct ModalMeaningView_Previews: PreviewProvider {
       static var previews: some View {
        ModalMeaningView(idioma: Idiom(id: 0, name: "ciaone", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "blablakkkk", meaningTradu: "", historyText: "", linkapple: "", linkspotify: "", linkyoutube: ""))
       }
   }
