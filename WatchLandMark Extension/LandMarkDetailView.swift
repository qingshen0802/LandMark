//
//  LandMarkDetailView.swift
//  WatchLandMark Extension
//
//  Created by Master on 5/7/21.
//

import SwiftUI

struct LandMarkDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: LandMark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            VStack {
                CircleImageView(image: landmark.image.resizable())
                    .scaledToFit()
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                Divider()
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                Text(landmark.state)
                    .font(.caption)
                Divider()
                MapContentView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(8)
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        return Group {
            LandMarkDetailView(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 5 - 44mm")

            LandMarkDetailView(landmark: modelData.landmarks[1])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 5 - 40mm")
        }
    }
}
