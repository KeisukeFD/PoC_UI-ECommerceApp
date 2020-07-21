//
//  QuantityView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//

import SwiftUI

struct QuantityView: View {
    
    @Binding var count: Int {
        didSet {
            if(count < 0 ) {
                count = 0
            }
        }
    }
    
    var body: some View {
        HStack {
            Button(action: {
                self.count-=1
            }) {
                Image(systemName: "minus")
                    .foregroundColor(.gray)
                    .padding()
            }.frame(width: 40, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 1.0)
                        .fill(Color.gray)
            )
            
            Text(String(format: count == 0 ? "0":"%02d", count))
                .font(.title2)
                .foregroundColor(Color.black.opacity(0.7))
                .padding(.leading, 10)
                .padding(.trailing, 10)
            
            Button(action: {
                self.count+=1
            }) {
                Image(systemName: "plus")
                    .padding()
                    .foregroundColor(.gray)
            }
            .frame(width: 40, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 1.0)
                        .fill(Color.gray)
            )
            
        }
    }
}

