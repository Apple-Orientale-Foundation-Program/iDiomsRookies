//
//  Onboarding3.swift
//  iDiomsRookies
//
//  Created by Alessandra Amorico on 23/10/2020.
//

import SwiftUI

struct Onboarding3: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
//            NavigationView {
          VStack {
                        Text("Play the song")
                            .fontWeight(.bold)
                            .foregroundColor(Color("ourblue"))
                            .multilineTextAlignment(.center)
                            .font(.custom("SF Pro Rounded Bold", size: 36))
                        
                        Text("Have fun!")
                            .fontWeight(.regular)
                            .foregroundColor(Color("ourblue"))
                            .font(.custom("SF Pro Rounded Regular",size: 30))
            
            
                        Spacer()
            
                        
                    
                    
                    Image ("tizioquadri1")
                        .resizable()
                        
                        .frame(width: 580.0, height: 443.0)
                       
//                  .navigationBarItems(trailing:
//                                                NavigationLink(destination: Categorie(items: idioms)){ Text ("Skip")})
//
    
            
    Spacer()
                 }
            .frame(height: 600)
          
                
//            }
           
            Button(action:  {
                presentationMode.wrappedValue.dismiss()
            
            }) {
                
            ZStack {
            RoundedRectangle(cornerRadius: 30) .foregroundColor(Color("ourblue"))
                .frame(width: 200.0, height: 50.0)
            
                Text ("Get Started")
                    .foregroundColor(Color.white)
            
        }
      }
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}

}
