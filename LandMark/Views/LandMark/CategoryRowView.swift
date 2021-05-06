//
//  CategoryRowView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct CategoryRowView: View {
    var categoryName: String
    var items: [LandMark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink(destination: LandMarkDetailView(landmark: landmark)) {
                            CategoryItemView(landmark: landmark)
                        }
                    }
                }
            }
            .padding(.horizontal, 8.0)
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRowView(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
