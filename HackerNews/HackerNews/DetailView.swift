//
//  DetailView.swift
//  HackerNews
//
//  Created by Molina Espinosa, Pedro on 27/8/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}


#Preview {
    DetailView(url: "")
}

