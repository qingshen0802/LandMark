//
//  LandMarkListView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct LandMarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandMarkDetailView(landmark: landmark)) {
                    LandMarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("LandMark List")
        }
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()
    }
}
