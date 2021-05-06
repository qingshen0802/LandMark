//
//  CircleImageView.swift
//  SwiftUISample
//
//  Created by Master on 5/6/21.
//

import SwiftUI

struct CircleImageView: View {
    
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.green, lineWidth: 4.0))
            .shadow(radius: 8)
            
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("Turtle Rock"))
    }
}
