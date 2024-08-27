//
//  ContentView.swift
//  HackerNews
//
//  Created by Molina Espinosa, Pedro on 26/8/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkingManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.post){
                post in
                Text(post.title)
            }.navigationTitle("Hacker news")
        }
            .onAppear(
                perform: {
                    networkManager.fetchData()
                }
            )
    }
}




#Preview {
    ContentView()
}
