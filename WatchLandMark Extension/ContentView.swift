//
//  ContentView.swift
//  WatchLandMark Extension
//
//  Created by Master on 5/7/21.
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
