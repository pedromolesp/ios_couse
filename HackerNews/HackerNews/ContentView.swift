//
//  ContentView.swift
//  HackerNews
//
//  Created by Molina Espinosa, Pedro on 26/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts){
                post in
                Text(post.title)
            }
        }.navigationTitle("Hacker news")
    }
}



let posts = [
    Post(id: "1", title: "HELLO1"),
    Post(id: "2", title: "HELLO1"),
    Post(id: "2", title: "HELLO1"),
    Post(id: "3", title: "HELLO1")
]
#Preview {
    ContentView()
}
