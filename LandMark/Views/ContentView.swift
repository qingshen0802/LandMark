//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selected) {
            CategoryHomeView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag("CategoryView")
            LandMarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag("ListView")
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
