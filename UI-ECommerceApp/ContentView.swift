//
//  ContentView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-19.
//

import SwiftUI

struct ContentView: View {
    init() {
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.backgroundColor = UIColor.white
        standardAppearance.shadowColor = .clear
        
        let compactAppearance = UINavigationBarAppearance()
        compactAppearance.backgroundColor = UIColor.white
        compactAppearance.shadowColor = .clear
        
        let scrollEdgeAppearance = UINavigationBarAppearance()
        scrollEdgeAppearance.backgroundColor = UIColor.white
        scrollEdgeAppearance.shadowColor = .clear
        
        UINavigationBar.appearance().standardAppearance = standardAppearance
        UINavigationBar.appearance().compactAppearance = compactAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = scrollEdgeAppearance
    }
    
    var body: some View {
        NavigationView {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
