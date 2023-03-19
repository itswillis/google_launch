//
//  ContentView.swift
//  Google Launch
//
//  Created by William Tang on 13/03/23.
//

import SwiftUI
// For web elements
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://www.google.com"
    
    var body: some View {
        //Create a vertical stack
        VStack(spacing: 40){
            WebView(url: URL(string: urlString)!)
                .cornerRadius(10)
        }
    }
}

// Making the WebView
struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    // Tell the program to load URL
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
