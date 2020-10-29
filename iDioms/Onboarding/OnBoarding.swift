//
//  OnBoarding.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 29/10/2020.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        TabView {
            Onboarding1()
            Onboarding2()
            Onboarding3()
            
            
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
