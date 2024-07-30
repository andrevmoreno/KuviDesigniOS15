//
//  Tab.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 26-07-24.
//

import SwiftUI

struct TabItem: Identifiable {
    
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    }

var tabItems = [
    TabItem(text: "Learn Now" , icon:"house.fill", tab: .home ),
    TabItem(text: "Explore" , icon:"magnifyingglass",  tab: .explore),
    TabItem(text: "Notifications" , icon:"bell.fill", tab: .notifications),
    TabItem(text: "Library" , icon: "rectangle.stack.fill",  tab: .library)
]
enum Tab: String {
    case home
    case explore
    case notifications
    case library
}
struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat){
        value = nextValue()
    }
}
