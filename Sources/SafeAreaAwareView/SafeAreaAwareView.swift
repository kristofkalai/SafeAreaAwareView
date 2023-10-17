//
//  SafeAreaAwareView.swift
//
//
//  Created by Kristóf Kálai on 17/10/2023.
//

import SwiftUI

public struct SafeAreaAwareView<TopContent: View, BottomContent: View, Content: View> {
    private let topSafeAreaContent: () -> TopContent
    private let bottomSafeAreaContent: () -> BottomContent
    private let content: () -> Content

    public init(
        topSafeAreaContent: @escaping () -> TopContent,
        bottomSafeAreaContent: @escaping () -> BottomContent,
        content: @escaping () -> Content
    ) {
        self.topSafeAreaContent = topSafeAreaContent
        self.bottomSafeAreaContent = bottomSafeAreaContent
        self.content = content
    }
}

extension SafeAreaAwareView: View {
    public var body: some View {
        VStack(spacing: .zero) {
            GeometryReader { _ in
                topSafeAreaContent()
                    .ignoringSafeArea()
            }
            .fixedSize(horizontal: false, vertical: true)

            ZStack {
                Color.clear

                content()
            }

            GeometryReader { _ in
                bottomSafeAreaContent()
                    .ignoringSafeArea()
            }
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}

extension SafeAreaAwareView where TopContent == EmptyView {
    public init(bottomSafeAreaContent: @escaping () -> BottomContent, content: @escaping () -> Content) {
        self.init(topSafeAreaContent: EmptyView.init, bottomSafeAreaContent: bottomSafeAreaContent, content: content)
    }
}

extension SafeAreaAwareView where BottomContent == EmptyView {
    public init(topSafeAreaContent: @escaping () -> TopContent, content: @escaping () -> Content) {
        self.init(topSafeAreaContent: topSafeAreaContent, bottomSafeAreaContent: EmptyView.init, content: content)
    }
}

extension SafeAreaAwareView where TopContent == EmptyView, BottomContent == EmptyView {
    public init(content: @escaping () -> Content) {
        self.init(topSafeAreaContent: EmptyView.init, bottomSafeAreaContent: EmptyView.init, content: content)
    }
}
