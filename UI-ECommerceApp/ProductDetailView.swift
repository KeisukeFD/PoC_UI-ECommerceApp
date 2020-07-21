//
//  ProductDetailView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode

    var product: ProductItem
    @State var quantity: Int = 0
    @State var selectedColor: Color = .black
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(product.color)
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { geo in
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(24)
                    .frame(width: geo.size.width, height: 450)
                    .offset(y: 370)
            }
                
            VStack(alignment: .leading) {
                Text("Aristocratic Hand Bag")
                    .foregroundColor(.white)
                
                Spacer().frame(height: 10)
                
                Text(product.name)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Price")
                            .foregroundColor(.white)
                            .font(.callout)
                        
                        Spacer().frame(height: 5)
                        
                        Text("$\(String(format: "%.f", product.price))")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Spacer()

                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                }.offset(y: 100)
                .padding(.bottom, 100)

                
                LazyVGrid(columns: [
                    GridItem(.fixed(190)), GridItem(.flexible())
                ], alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Color")
                            .font(.callout)

                        ColorSelectorView(colors: [product.color, .blue, .orange, .red], selected: self.$selectedColor, size: 20)
                        
                    }

                    VStack(alignment: .leading) {
                        Text("Size")
                            .font(.callout)
                        Text("12 cm")
                            .font(.body)
                            .bold()
                    }
                }.padding(.bottom, 20)

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sagittis felis. Etiam vitae magna placerat, imperdiet metus et, porttitor arcu. Praesent pellentesque est ac metus euismod, id vestibulum neque vehicula.")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.bottom, 30)
                
                
                HStack {
                    QuantityView(count: $quantity)
                    Spacer()
                    Image("heart")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .padding(.all, 8)
                        .background(Color.red)
                        .cornerRadius(16)
                        
                }
                
                Spacer()
                
                LazyVGrid(columns: [GridItem(.fixed(80)), GridItem(.flexible())]) {
                    Button(action: {}, label: {
                        Image("add_to_cart")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(product.color)
                    
                    })
                    .padding(.all, 12)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 1.0).fill(product.color))
                  
                    
                    Button(action: {}, label: {
                        Text("BUY NOW")
                            .bold()
                            .foregroundColor(.white)
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(product.color)
                    .cornerRadius(20)
   
                }

                
            }.padding()
            .offset(y: 10)
        }
        .onAppear {
            self.selectedColor = product.color
        }
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("back")
                    .renderingMode(.template)
                    .foregroundColor(.gray)
            }),
            trailing: HStack {
            Image("search")
                .renderingMode(.template)
                .foregroundColor(.gray)
            Spacer().frame(width: 25)
            Image("cart")
                .renderingMode(.template)
                .foregroundColor(.gray)
        })
        .navigationBarTitle(Text(""), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
    }
}
