//
//  pallinii.swift
//  iDiomsRookies
//
//  Created by Alessandra Amorico on 23/10/2020.
//

import SwiftUI

struct Pallinii: View {
    @State var currentPage = 0
    
    var body: some View {
        
       pageControl(current: currentPage)
    }
}

struct pageControl : UIViewRepresentable {
    var current = 0
    func makeUIView(context: UIViewRepresentableContext<pageControl>) -> UIPageControl {
        let page = UIPageControl ()
        page.currentPageIndicatorTintColor = .black
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .gray
        return page
    }
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
        
        uiView.currentPage = current
    }
    }




struct Pallinii_Previews: PreviewProvider {
    static var previews: some View {
        Pallinii()
    }
}
