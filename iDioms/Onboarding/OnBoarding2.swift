//
//  Onboarding2.swift
//  iDiomsRookies
//
//  Created by Alessandra Amorico on 23/10/2020.
//

import SwiftUI

struct Onboarding2: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
        VStack {
          
            Text("Choose a card")
                .fontWeight(.bold)
                .foregroundColor(Color("ourblue"))
                .multilineTextAlignment(.center)
                .font(.custom("SF Pro Rounded Bold", size: 36))
            
            Text("Tap an Idiom!")
                .fontWeight(.regular)
                .foregroundColor(Color("ourblue"))
                .font(.custom("SF Pro Rounded Regular",size: 30))
            Spacer()
            
            Image ("tizioquadri2")
                .resizable()
                .frame(width: 580.0, height: 443.0)
            
//            Pallinii()
            
            Spacer()
            
        }
        .frame(height: 600)
            
        Button(action:  {
            presentationMode.wrappedValue.dismiss()
        
        }) {
            
        ZStack {
        RoundedRectangle(cornerRadius: 30) .foregroundColor(Color("ourblue"))
            .frame(width: 200.0, height: 50.0)
        
            Text ("Skip")
                .foregroundColor(Color.white)
        }
        }
    }
}



struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}


}
