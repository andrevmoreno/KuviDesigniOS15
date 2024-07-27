//
//  ContentView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 23-07-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            //Logo
            Image("Logo 2").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 26, height: 26).cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
                .strokeStyle()
                .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x:0, y: 10)
            //Text Box
            Text("SwiftUI for iOS 15")
                .font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)],startPoint: .topLeading, endPoint: .bottomTrailing)).lineLimit(1)
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/).foregroundStyle(.linearGradient(colors: [.secondary, .primary.opacity(0.3)],startPoint: .topLeading, endPoint: .bottomTrailing)).lineLimit(1)
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.caption).multilineTextAlignment(.leading)
                .lineLimit(2).frame(maxWidth: .infinity,alignment: .leading).foregroundColor(.secondary)
        }
        .padding(.all,20)
        .frame(height: 350)
        .background(.ultraThinMaterial)
        .cornerRadius(30.0)
        .shadow(color: Color("Shadow").opacity(0.2), radius: 10, x:0, y: 10)
        .strokeStyle()
        .padding(.horizontal, 20)
        .background(Image("Blob 1").offset(x:250, y: -200)
        )        
        .overlay(Image("Illustration 2").resizable().aspectRatio(contentMode: .fit).frame(width: 402.5, height: 238.4).offset(x:20,y: -70)
        )
    }
}

#Preview {
    ContentView()
}
