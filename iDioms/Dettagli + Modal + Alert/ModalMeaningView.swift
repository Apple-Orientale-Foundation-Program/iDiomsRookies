//
//  ModalMeaningView.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct ModalMeaningView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isPresented1: Bool = false
    @State var idiom: Idiom
    
       var body: some View {
    
            // qua è tutto il testo completo
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
        VStack(alignment: .leading) {
            HStack{      Text("\(idiom.name)")
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
            
            
            Text("\(idiom.meaningTradu)")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                        .padding()
            
            HStack{ Text("Ex:")
                .font(.title3)
                .fontWeight(.bold)
         .bold()
                .foregroundColor(.white)  +
                Text("\(idiom.meaningText)")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            } .padding(.leading)
            Spacer()
            
                }
           }
       }
}
   struct ModalMeaningView_Previews: PreviewProvider {
       static var previews: some View {
        ModalMeaningView(idiom: idioms[0])
       }
   }
