//
//  SplashView.swift
//  iDioms
//
//  Created by Francesca Russo on 29/10/2020.
//
import SwiftUI

struct SplashView: View {
   
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                Categorie(items: Array(idioms.prefix(2)))
                    .environmentObject(Data())
            } else {
                // 4.
                ZStack {
                    Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
                Image("logo")
                    .resizable()
                    .frame(width: 420, height: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
