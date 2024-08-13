//
//  ContentView.swift
//  I Am Single
//
//  Created by Molina Espinosa, Pedro on 13/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("I am Rich").font(.system(size: 40)).fontWeight(.bold).foregroundColor(Color.white)
                Image("diamond").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200,alignment: .center)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
