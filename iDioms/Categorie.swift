//
//  ContentView.swift
//  iDioms
//
//  Created by Francesca Russo on 29/10/2020.
//

import SwiftUI
import UIKit

struct Categorie: View {
    @State private var isPresented = true
    
    var items: [Idiom]
    var categories: [String: [Idiom]] {
        Dictionary(
            grouping: idioms,
            by: {$0.categoryCard.rawValue}
        )}
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(categories.keys.sorted(), id:\.self) { key in NavigationLink(destination: IdiomsList(categoryName: key, items: self.categories[key]!))
                    {
                        CardView(categoryName: key, idiom: idioms[0])
                    }
                    
                    
                    }
                    .frame(maxWidth: .infinity)
                    NavigationLink(
                        destination: AllView(categoryName: "All", items: Array(idioms.prefix(60)))){
                        
                        CardView(categoryName: "All", idiom: idioms[2])}
                    
                }
            }
            .navigationTitle(Text("Choose a card"))
            
        .navigationBarItems(trailing:
                                NavigationLink (destination:
                                                    MyFavouriteList())
                                {
                                    Image(systemName: "bookmark.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color("ourorange"))
                                        .frame(width: 30, height: 30)
                                })
    }.accentColor(Color("ourorange"))
        
        .fullScreenCover(isPresented: $isPresented) {
            OnBoarding()
        }

.onAppear {

  UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]


  //Use this if NavigationBarTitle is with displayMode = .inline
   UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.orange]

    }
}

struct CardView: View {
    var categoryName: String
    var idiom: Idiom
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 375, height: 200)
                .foregroundColor(.white)
            VStack{
                Text(categoryName)
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                    .fontWeight(.bold)
                    .padding(7)
                
                Spacer()
                
                Image(idiom.image)
                    .resizable()
                    .frame(width: 240, height: 140)
            }
        }
        .frame(width: 375, height: 200, alignment: .center)
        .padding(.top)
    }
}
}

struct Categorie_Previews: PreviewProvider {
    static var previews: some View {
        Categorie(items: Array(idioms.prefix(2)))
            .environmentObject(Data())
    }
}

