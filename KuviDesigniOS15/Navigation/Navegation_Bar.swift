//
//  Navegation Bar.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 31-07-24.
//

import SwiftUI

struct Navegation_Bar: View {
    var title = ""
    @Binding var hasScrolled: Bool
    
    
    var body: some View {
        ZStack{
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 20)
                .opacity(hasScrolled ? 1 : 0)
            
            
            Text(title)
                .animatableFont(size: hasScrolled ? 22 :  34, weight: .bold)
                .font(.largeTitle.weight(.bold)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading, 20)
                .padding(.leading, 20)
                .padding(.top, 20)
            //Lens
            HStack (spacing: 16) {
                Image(systemName: "magnifyingglass").font(.body.weight(.bold))
                    .frame(width: 36, height: 36)
                    .foregroundColor(.secondary)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                .strokeStyle()
                
                Image("Avatar Default")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .cornerRadius(10)
                    .padding(8)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .strokeStyle(cornerRadius: 18)
            }
            .frame(maxWidth: .infinity, alignment: .trailing).padding(.trailing, 20)
            .padding(.top, 20)
            .offset(y: hasScrolled ? -4 : 0)
        }
        .frame(height: hasScrolled ? 44: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    Navegation_Bar(title: "Featured", hasScrolled: .constant(false))
}
