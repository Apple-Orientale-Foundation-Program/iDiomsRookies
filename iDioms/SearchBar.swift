//
//  SearchBar.swift
//  iDiomsRookies
//
//  Created by Michele on 26/10/2020.

import SwiftUI

struct SearchBar: View {
    @Binding var searchText : String
    @State var isSearching = false
    var body: some View {
        HStack{
            TextField("Search", text: $searchText)
                .padding(.leading, 24)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(12 )
        .padding(.horizontal)
        .onTapGesture(perform: {
            isSearching = true
        })
        .overlay(
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                    
                    Spacer()
                    
                    if isSearching{
                        Button(action: {
                            searchText = ""
                            
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.vertical)
                        }
                        )
                    }
                }
                .padding(.horizontal, 32)
                .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                
            }
       ) }
}
    struct SearchBar_Previews: PreviewProvider {
        static var previews: some View {
            SearchBar(searchText: .constant(""))
        }
    }

