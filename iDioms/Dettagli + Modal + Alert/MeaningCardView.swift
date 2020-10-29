//
//  MeaningCard.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct MeaningCardView: View {
    @State private var showMeaningDetails = false
    @State var isPresented1: Bool = false
    @State var meaningTradu: String
    @State var meaningText: String
    @State var idiom: Idiom
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 375, height: 200)
                .foregroundColor(.white)
            
            VStack(alignment: .leading){
                HStack {
                    Text("Meaning & Examples")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                        .padding(.leading)
                    Spacer()
                    Spacer()
                    
                    Button(action: {
                        self.isPresented1.toggle()
                    }) {
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .shadow(radius: 10)
                            .padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 0))}
                    
                    .sheet(isPresented: $isPresented1) {
                        ModalMeaningView(idiom: idiom)
                    }
                }
            
                Text("\(meaningTradu)")
                    .font(.body)
                   .fontWeight(.bold)
                  .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                   .padding(.top)
                  .padding(.bottom)
                        .padding(.leading)
                
                HStack {
                    Text("Ex:")
                        .font(.subheadline)
                        .fontWeight(.bold)
                 .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))  +
                    Text("\(meaningText)")
                        .font(.subheadline)
                        .fontWeight(.regular)
                .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                }
                .padding(.leading)
              
            }
            .padding(.trailing)
            .frame(width: 370, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }

struct MeaningCardView_Previews: PreviewProvider {
    static var previews: some View {
        MeaningCardView(meaningTradu: "esemp", meaningText: "esempio2", idiom: Idiom(id: 0, name: "", categoryCard: Idiom.Category.action, image: "", isFavourite: false, meaningText: "", meaningTradu: "", historyText: "", linkapple: "", linkspotify: "", linkyoutube: ""))
    }
}

