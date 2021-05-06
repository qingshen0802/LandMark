//
//  CategoryHomeView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct CategoryHomeView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0]
                    .image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRowView(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHomeView()
            .environmentObject(ModelData())
    }
}
