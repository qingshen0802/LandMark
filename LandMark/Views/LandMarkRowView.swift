//
//  LandMarkRowView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct LandMarkRowView: View {
    var landmark: LandMark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 64, height: 64)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkRowView_Previews: PreviewProvider {
    static var landMarks = ModelData().landmarks
    static var previews: some View {
        LandMarkRowView(landmark: landMarks[1])
            .previewLayout(.fixed(width: 320, height: 80))
    }
}
