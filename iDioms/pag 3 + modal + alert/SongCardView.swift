//
//  SongCard.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct SongCardView: View {
    @State private var showingAlert = false
    @State private var showAppleMusicDetails = false
    @State private var showSpotifyDetails = false
    @State private var showYoutubeDetails = false
    
    @State var linkapple: String
    @State var linkspotify: String
    @State var linkyoutube: String
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 375, height: 200)
                .foregroundColor(.white)
            
            VStack {
                
                Text("Play the song")
                    .font(.custom("SF Pro Rounded Bold", size:26))
                    .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 200))
                
                HStack{
                    Spacer()
                    //apple music
                    VStack {
                        Button(action: {
                            self.showingAlert = true
                        }) {
                            Image("appleMusicIcon")
                                .foregroundColor(.orange)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 10) }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow")))
                        }
                        
                        Text("Go to min")
                            .font(.custom("SF Pro Rounded Regular", size:19))
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    //spotify
                    VStack {
                        Button(action: {
                            self.showingAlert = true
                        }) {
                            Image("spotifyIcon")
                                .foregroundColor(.orange)
                                .padding(.leading, 2.0)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 51, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 10) }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow")))
                        }
                        
                        Text("Go to min")
                            .font(.custom("SF Pro Rounded Regular", size:19))
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    //youtube
                    VStack {
                        Button(action: {
                            self.showingAlert = true
                        }) {
                            Image("youtubeIcon")
                                .foregroundColor(.orange)
                                .frame(width: 100, height: 65, alignment: .bottom)
                                .shadow(radius: 10)}
                        
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow")))
                        }
                        
                        Text("Go to min")
                            .font(.custom("SF Pro Rounded Regular", size:19))
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                }
            }
        }
        .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(.top)
        
    }
}

struct SongCardView_Previews: PreviewProvider {
    static var previews: some View {
        SongCardView(linkapple: "", linkspotify: "" , linkyoutube: "")
    }
}
