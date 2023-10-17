//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 17/10/2023.
//

import SafeAreaAwareView
import SwiftUI

struct ContentView: View {
    var body: some View {
        SafeAreaAwareView(topSafeAreaContent: {
            Color.red.opacity(0.75)
        }, bottomSafeAreaContent: {
            Color.green.opacity(0.75)
        }, content: {
            Color.white.opacity(0.75)
        })
    }
}

#Preview {
    ContentView()
}
