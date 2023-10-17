//
//  View+Extensions.swift
//
//
//  Created by Kristóf Kálai on 17/10/2023.
//

import SwiftUI

extension View {
    func ignoringSafeArea() -> some View {
        Group {
            if #available(iOS 14, *) {
                ignoresSafeArea()
            } else {
                edgesIgnoringSafeArea(.all)
            }
        }
    }
}
