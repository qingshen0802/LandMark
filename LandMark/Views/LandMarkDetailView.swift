//
//  LandMarkDetailView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct LandMarkDetailView: View {
    var landmark: LandMark
    var body: some View {
        ScrollView {
            MapContentView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            CircleImageView(image: landmark.image)
                .padding(.bottom, -120.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-120.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.primary)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandMarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetailView(landmark: landmarks[0])
    }
}
