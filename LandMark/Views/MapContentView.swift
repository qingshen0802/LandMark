//
//  MapContentView.swift
//  SwiftUISample
//
//  Created by Master on 5/6/21.
//

import SwiftUI
import MapKit

struct MapContentView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
