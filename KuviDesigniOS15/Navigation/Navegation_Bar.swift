//
//  Navegation Bar.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 31-07-24.
//

import SwiftUI

struct Navegation_Bar: View {
    var title = ""
    
    var body: some View {
        ZStack{
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10)
            
            
            Text("Featured").font(.largeTitle.weight(.bold)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading, 20)
                .padding(.leading, 20)
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    Navegation_Bar(title: "Featured")
}
