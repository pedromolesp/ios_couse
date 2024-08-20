//
//  ContentView.swift
//  PedroCard
//
//  Created by Molina Espinosa, Pedro on 20/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.69, blue: 0.52 ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("windu").resizable().aspectRatio(contentMode: .fit).frame(width: 300, height: 300).clipShape(Circle())
                Text("Pedro Mol").font(Font.custom("Pacifico-Regular", size: 40)).bold().foregroundStyle(.white)
                Text("iOS Developer").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(
                text: "+34 664612345", image_name: "phone.fill")
                InfoView(
                text: "pedromoli@gmail.com", image_name: "envelope.fill")
                 
            }
            
        }
    }
}

#Preview {
    ContentView()
}

