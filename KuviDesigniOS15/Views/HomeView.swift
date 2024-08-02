//
//  HomeView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 30-07-24.
//

import SwiftUI

struct HomeView: View {
    @State var hasScroll = false
    var body: some View {
        
        
        ScrollView {
            GeometryReader { proxy in
                //Text("\(proxy.frame(in: .named("scroll")).minY)")
                Color.clear.preference(key: ScrollPreferenceKeys.self, value: proxy.frame(in: .named("scroll")).minY)
            }.frame(height:0)
            FeatureItem()
            
            Color.clear.frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKeys.self, perform: { value in
            withAnimation(.easeInOut){
                if value < 0{
                    hasScroll = true
                } else {
                    hasScroll = false
                }
            }
        })
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height: 70)
        })
        .overlay{
            Navegation_Bar(title: "Featured")
        }
    }
}


#Preview {
    HomeView()
}
