//
//  View+Extensions.swift
//  Splitwise
//
//  Created by Rachel Lee on 8/10/24.
//

import SwiftUI

extension View {
    @available(iOS 14, *)
    func navigationBarColor(_ backgroundColor: Color, textColor: Color) -> some View {
        let backgroundColor = UIColor(backgroundColor)
        let textColor = UIColor(textColor)
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [.foregroundColor: textColor]
        appearance.largeTitleTextAttributes = [.foregroundColor: textColor ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
        
        return self
    }
}
