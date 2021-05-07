//
//  CategoryHomeView.swift
//  LandMark
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct CategoryHomeView: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRowView(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Featured")
            .toolbar {
                Button(action: { showingProfile.toggle() }) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHostView()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHomeView()
            .environmentObject(ModelData())
    }
}
