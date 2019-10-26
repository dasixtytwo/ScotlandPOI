//
//  ContentView.swift
//  ScotlandPOI
//
//  Created by Davide Agosti on 26/10/2019.
//  Copyright © 2019 Davide Agosti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // Map
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            // Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Text View
            VStack(alignment: .leading) {
               Text("Kelvin Groove Art & Museum")
                .font(.title)
                HStack() {
                    Text("Glasgow")
                        .font(.subheadline)
                    Spacer()
                    Text("Scotland")
                        .font(.subheadline)
                }
            }.padding()
            
            // spacer
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
