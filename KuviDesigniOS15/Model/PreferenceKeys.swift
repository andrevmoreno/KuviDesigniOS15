//
//  PreferenceKeys.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 31-07-24.
//

import SwiftUI

struct ScrollPreferenceKeys: PreferenceKey {

    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
