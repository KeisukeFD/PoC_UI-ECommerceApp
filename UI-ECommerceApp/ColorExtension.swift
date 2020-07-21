//
//  ColorExtension.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//
import SwiftUI

extension Color {
    init(hex: Int) {
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        self.init(red: Double(red) / 255.0,
                  green: Double(green) / 255.0,
                  blue: Double(blue) / 255.0,
                  opacity: 1.0)
    }
}
