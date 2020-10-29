//
//  ModalHistoryView.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct ModalHistoryView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isPresented2: Bool = false
    @State var idiom: Idiom
    
       var body: some View {
        
            //qua il testo completo
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
            
        VStack(alignment: .leading) {
            HStack {
                Text("\(idiom.name)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                Spacer()
            Button(action:  {
                presentationMode.wrappedValue.dismiss()
            
            })
        {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                     .frame(width: 25, height: 25, alignment: .center)
                      .foregroundColor(Color("ourorange"))
                
            } .padding()
        }
        
            
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
        ModalHistoryView(idiom: idioms[0])
    }
}
