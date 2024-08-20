//
//  InfoView.swift
//  PedroCard
//
//  Created by Molina Espinosa, Pedro on 20/8/24.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let image_name: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50).fill(.white).frame(height: 40)
                .overlay( HStack{
                    Image(systemName: image_name).foregroundColor(.green)
                    Text(text)
                }
                ).padding(.all)
            
        }
    }
}

#Preview {
    InfoView(
        text: "+34 664612345", image_name: "phone.fill").previewLayout(.sizeThatFits)
}
