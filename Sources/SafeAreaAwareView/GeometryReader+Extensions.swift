//
//  GeometryReader+Extensions.swift
//
//
//  Created by Kristóf Kálai on 11/11/2023.
//

import SwiftUI

extension GeometryReader {
    static func withFixedIdealSize(@ViewBuilder content: @escaping (GeometryProxy) -> Content) -> some View {
        GeometryReader(content: content)
            .frame(idealWidth: .zero, idealHeight: .zero)
    }

    static func withFixedIdealSize(@ViewBuilder content: @escaping () -> Content) -> some View {
        withFixedIdealSize { _ in content() }
    }
}
