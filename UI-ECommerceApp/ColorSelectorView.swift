//
//  ColorSelectorView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//

import SwiftUI

struct ColorSelectorView: View {
    var colors: [Color]
    @Binding var selected: Color
    var size: CGFloat = 5.0
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(colors, id: \.self) { c in
                Button(action: {
                    self.selected = c
                }, label: {
                    if(c == self.selected) {
                        Circle()
                            .fill(c)
                            .frame(width: self.size, height: self.size)
                            .overlay(Circle()
                                    .stroke(lineWidth: 3)
                                    .fill(c)
                                        .frame(width: self.size + 6, height: self.size + 6)
                            )
                    } else {
                        Circle()
                            .fill(c)
                            .frame(width: self.size, height: self.size)
                    }
                })
            }

        }
    }
}

