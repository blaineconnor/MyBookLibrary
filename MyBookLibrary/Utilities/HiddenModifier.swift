//
//  HiddenModifier.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI

struct HiddenModifier: ViewModifier {
    var isEnabled = false
    
    func body(content: Content) -> some View {
        if isEnabled {
            content
                .hidden()
        } else {
            content
        }
    }
}

extension View {
    func hidden(isEnable: Bool) -> some View {
        modifier(HiddenModifier(isEnabled: isEnable))
    }
}
