//
//  NotificationView.swift
//  WatchLandMark Extension
//
//  Created by Master on 5/7/21.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: LandMark?
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImageView(image: landmark!.image.resizable())
                    .scaledToFit()
            }

            Text(title ?? "Unknown Landmark")
                .font(.headline)

            Divider()

            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()
            NotificationView(title: "Turtle Rock",
                 message: "You are within 5 miles of Turtle Rock.",
                 landmark: ModelData().landmarks[0])
        }
    }
}
