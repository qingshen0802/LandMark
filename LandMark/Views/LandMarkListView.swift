//
//  LandMarkListView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct LandMarkListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite List")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(
                        destination: LandMarkDetailView(landmark: landmark)) {
                        LandMarkRowView(landmark: landmark)
                    }
                    
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
