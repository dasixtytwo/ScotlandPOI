//
//  CircleImage.swift
//  ScotlandPOI
//
//  Created by Davide Agosti on 26/10/2019.
//  Copyright © 2019 Davide Agosti. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("kelvin-groove").clipShape(Circle())
        .overlay(Circle().stroke(Color.white,lineWidth: 2))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
