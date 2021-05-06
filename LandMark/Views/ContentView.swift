//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
