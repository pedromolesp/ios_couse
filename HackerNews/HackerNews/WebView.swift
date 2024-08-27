//
//  WebView.swift
//  HackerNews
//
//  Created by Molina Espinosa, Pedro on 27/8/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
            if let safeString = urlString {
                if let safeUrl = URL(string: safeString){
                    let request = URLRequest(url: safeUrl)
                    uiView.load(request)
                }
            }
        
    }
    
}
