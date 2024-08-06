//
//  HomeView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 30-07-24.
//

import SwiftUI

struct HomeView: View {
    @State var hasScrolled = false
    var body: some View {
        
        
        ScrollView {
            GeometryReader { proxy in
                //Text("\(proxy.frame(in: .named("scroll")).minY)")
                Color.clear.preference(key: ScrollPreferenceKeys.self, value: proxy.frame(in: .named("scroll")).minY)
            }.frame(height:0)
            
            TabView {
                ForEach(courses) { course in
                    GeometryReader { proxy in
                        let minX = proxy.frame(in: .global).minX
                        
                        FeatureItem(course: course)
                            .padding(.vertical, 40)
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minX / 10), axis: (x: 1, y: 1, z: 0))
                            .shadow(color: Color("Shadow").opacity(0.2), radius: 10, x:0, y: 10)
                            .blur(radius: abs(minX / 80))
                            .overlay(
                                Image(course.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 230)
                                    .offset(x: 32,y: -80)
                                    .offset(x: minX / 2)
                            )
                        //Text("\(proxy.frame(in: .global).minX)")
                    }
                }
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: 700)
                .background(Image("Blob 1").offset(x:250, y: -200)                   .background(
                    AngularGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.38, green: 0.52, blue: 1).opacity(0.5), location: 0.04),
                    Gradient.Stop(color: Color(red: 0.98, green: 0.9, blue: 0.91).opacity(0.3), location: 0.15),
                    Gradient.Stop(color: Color(red: 1, green: 0.45, blue: 0.71).opacity(0.6), location: 0.34),
                    Gradient.Stop(color: Color(red: 0.51, green: 0.58, blue: 1), location: 0.50),
                    ],
                    center: UnitPoint(x: 0.53, y: 0.32),
                    angle: Angle(degrees: 45.51)
                    ).blur(radius: 50)
                    ))
            
            Color.clear.frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKeys.self, perform: { value in
            withAnimation(.easeInOut){
                if value < 0{
                    hasScrolled = true
                } else {
                    hasScrolled = false
                }
            }
        })
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height: 70)
        })
        .overlay{
            Navegation_Bar(title: "Featured",hasScrolled: $hasScrolled)
        }
    }
}


#Preview {
    HomeView()
}
