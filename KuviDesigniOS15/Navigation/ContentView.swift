//
//  ContentView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 23-07-24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage ("selectedTab") var selectedTab: Tab = .home

    var body: some View {
        ZStack (alignment: .bottom){

            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }.safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

#Preview {
    ContentView()
}
