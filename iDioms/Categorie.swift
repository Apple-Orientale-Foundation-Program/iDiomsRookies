//
//  ContentView.swift
//  iDioms
//
//  Created by Francesca Russo on 29/10/2020.
//

import SwiftUI
import UIKit

struct Categorie: View {
    var items: [Idiom]
    var categories: [String: [Idiom]] {
        Dictionary(
            grouping: idioms,
            by: {$0.categoryCard.rawValue}
        )}
    
    @State private var isPresented = true

    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(categories.keys.sorted(), id:\.self) { key in NavigationLink(destination: IdiomsList(categoryName: key, items: self.categories[key]!))
                    {
                        CardView(categoryName: key, idiom: idioms[5])
                    }
                    
                    
                    }
                    .frame(maxWidth: .infinity)
                }
                 .navigationTitle(Text("Choose a card"))
                .font(.custom("SF Pro Rounded Bold", size:30))
                                
            }
            
            .navigationBarItems(trailing:
              NavigationLink (destination:
                  MyFavouriteList())
                {
                              Image(systemName: "bookmark.circle.fill")
                                .resizable()
                                 .foregroundColor(.orange)
                                   .frame(width: 30, height: 30)
              })
        }
        .fullScreenCover(isPresented: $isPresented) {
            OnBoarding()
        }

        .onAppear{

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemGray6]
            
            //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemGray6]

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

