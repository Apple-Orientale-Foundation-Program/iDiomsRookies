//
//  SongCard.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 27/10/2020.
//

import SwiftUI

struct SongCardView: View {
    @State private var showingAlertApple = false
    @State private var showingAlertSpotify = false
    @State private var showingAlertYoutube = false
    
    @State private var showingWebViewApple = false
    @State private var showingWebViewSpotify = false
    @State private var showingWebViewYoutube = false
    
    @State private var showAppleMusicDetails = false
    @State private var showSpotifyDetails = false
    @State private var showYoutubeDetails = false
    
    var idiom: Idiom
//    @State var linkapple: String
//    @State var linkspotify: String
//    @State var linkyoutube: String
//
    
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)).edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 375, height: 200)
                .foregroundColor(.white)
            
            VStack {
                
                Text("Play the song")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 200))
                
                HStack{
                    Spacer()
                    
                    
                    //apple music
                    VStack {
                       
                        Button(action: {
                            self.showingAlertApple = true
                        }) {
                            VStack {
                                NavigationLink(
                                    destination: WebView(website: idiom.linkapple),
                                    isActive: $showingWebViewApple,
                                    label: {
                                        EmptyView()
                                    })
                                Image("appleMusicIcon")
                                    .foregroundColor(.orange)
                                    .frame(width: 100, height: 65, alignment: .center)
                                    .shadow(radius: 10)
                            } }
                        .alert(isPresented: $showingAlertApple) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow"), action: {
                                self.activateWebViewApple()
                                
                            }))
                        }
                        
                        Text("Go to min \n 1:10")
                            .fontWeight(.regular)
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    
                    
                    
                    //spotify
                    VStack {
                        Button(action: {
                            self.showingAlertSpotify = true
                        }) {
                            VStack {
                                NavigationLink(
                                    destination: WebView(website: idiom.linkspotify),
                                    isActive: $showingWebViewSpotify,
                                    label: {
                                        EmptyView()
                                    })
                                Image("spotifyIcon")
                                    .foregroundColor(.orange)
                                    .padding(.leading, 2.0)
                                    .frame(width: 100, height: 51, alignment: .center)
                                    .shadow(radius: 10)
                            } }
                        .alert(isPresented: $showingAlertSpotify) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow"), action: {
                                self.activateWebViewSpotify()
                                
                            }))
                        }
                        
                        
                        Text("Go to min \n 1:10")
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    
                    
                    
                    //youtube
                    VStack {
                        Button(action: {
                            self.showingAlertYoutube = true
                        }) {
                            VStack {
                                NavigationLink(
                                    destination: WebView(website: idiom.linkyoutube),
                                    isActive: $showingWebViewYoutube,
                                    label: {
                                        EmptyView()
                                    })
                                Image("youtubeIcon")
                                    .foregroundColor(.orange)
                                    .frame(width: 100, height: 65, alignment: .bottom)
                                    .shadow(radius: 10)
                            }}
                        
                        .alert(isPresented: $showingAlertYoutube) {
                            Alert(title: Text("Alert"), message: Text("You will move to another app"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("Allow"), action: {
                                self.activateWebViewYoutube()
                                
                            }))
                        }
                        
                        Text("Go to min \n 1:10")
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.03529411765, green: 0.1490196078, blue: 0.4352941176, alpha: 1)))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                }
            }
        }
        .frame(width: 375, height: 200, alignment: .center)
        .padding(.top)
        
    }
    func gotoapplelink() -> WebView {
        return WebView(website: idiom.linkapple)
    }
    func gotospotifylink() -> WebView {
        return WebView(website: idiom.linkspotify)
    }
    func gotoyoutubelink() -> WebView {
        return WebView(website: idiom.linkyoutube)
    }
    func activateWebViewApple() {
        DispatchQueue.main.async {
            self.showingWebViewApple = true
        }
    }
    func activateWebViewSpotify() {
        DispatchQueue.main.async {
            self.showingWebViewSpotify = true
        }
    }
    func activateWebViewYoutube() {
        DispatchQueue.main.async {
            self.showingWebViewYoutube = true
        }
    }
    
}

struct SongCardView_Previews: PreviewProvider {
    static var previews: some View {
        SongCardView(idiom: idioms[0])
    }
}
