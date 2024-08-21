//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Molina Espinosa, Pedro on 21/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all
            )
          
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                Spacer()

                Button(action:{
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll").font(.system(size: 50)).fontWeight(.heavy).foregroundColor(.white)
                }
                .background(.green)
            }.padding(.horizontal)
          
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(contentMode: .fit).padding()
    }
}

#Preview {
    ContentView()
}
