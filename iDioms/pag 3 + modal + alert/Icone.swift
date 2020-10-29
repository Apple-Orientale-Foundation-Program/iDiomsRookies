//
//  WebView.swift
//  iDiomsRookies
//
//  Created by Francesca Russo on 28/10/2020.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var website: String
    var content: String?
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        
        let webView = WKWebView()
        if let htmlString = content{
            webView.loadHTMLString(htmlString, baseURL: nil)
            }
        else {
            if let url = URL(string: "https://" + website) {
                webView.load(URLRequest(url: url))
                webView.allowsBackForwardNavigationGestures = false
            }
        }
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {

    }
}

struct IconeView: View {
    var body: some View {
        WebView(website: "www.google.com")
    }
}

struct IconeView_Previews: PreviewProvider {
    static var previews: some View {
        IconeView()
    }
}
