//
//  CategoryItemView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct CategoryItemView: View {
    var landmark: LandMark

    var body: some View {
        VStack(alignment: .center) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.horizontal, 8.0)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(landmark: ModelData().landmarks[0])
    }
}
