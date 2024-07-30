//
//  TabBar.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 26-07-24.
//

import SwiftUI

struct TabBar: View {
    
    @State var selectedTab: Tab = .home
    @State var tabItemWidth: CGFloat = 0
    
    var body: some View {
        ZStack (alignment: .bottom){

            Group {
                switch selectedTab {
                case .home:
                    ContentView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
            
            HStack {
                Spacer()
                buttons
                
                
            }.padding(.top, 14)
                .frame(height: 88, alignment: .top)
                .background(.ultraThinMaterial, in:
                 RoundedRectangle(cornerRadius: 34, style: .continuous))
                .background(
                    HStack {
                        if selectedTab == .library{Spacer()}
                        if selectedTab == .explore{Spacer()}
                        if selectedTab == .notifications{
                            Spacer()
                            Spacer()
                        }

                        Circle()
                            .fill((Color(red: 0.13, green: 0.95, blue: 1).opacity(0.7))).frame(width: tabItemWidth)
                        if selectedTab == .home{Spacer()}
                        if selectedTab == .explore{
                            Spacer()
                            Spacer()
                        }
                        if selectedTab == .notifications {Spacer()}
                    }.padding(.horizontal, 8))
                .overlay(
                        HStack {
                            if selectedTab == .library{Spacer()}
                            if selectedTab == .explore{Spacer()}
                            if selectedTab == .notifications{
                                Spacer()
                                Spacer()
                            }

                            Rectangle()
                                .fill((Color(red: 0.13, green: 0.95, blue: 1))).frame(width: 40, height: 8)
                                .cornerRadius(3)
                                .frame(width: 110)
                                .frame(maxHeight: .infinity, alignment: .top)
                            
                            if selectedTab == .home{Spacer()}
                            if selectedTab == .explore{
                                Spacer()
                                Spacer()
                            }
                            if selectedTab == .notifications {Spacer()}
                        })
                
            
                .strokeStyle(cornerRadius: 34)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
        }
    }
    
    var buttons: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)){
                    selectedTab = item.tab}
            } label: {
                VStack {
                    Image(systemName: item.icon).font(.body.bold())
                        .frame(width:80, height: 29)
                    Text(item.text)
                        .font(.caption2)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
            .blendMode(selectedTab == item.tab ? .overlay : .normal)
            .overlay(
                GeometryReader{ proxy in
              //      Text("\(proxy.width)")
                    Color.clear.preference(key:TabPreferenceKey.self, value: proxy.size.width)
                }
            ).onPreferenceChange(TabPreferenceKey.self){
                value in
                tabItemWidth = value
            }
        }
        
    }
}


#Preview {
    TabBar()
}
