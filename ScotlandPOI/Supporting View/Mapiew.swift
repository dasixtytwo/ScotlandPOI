//
//  Mapiew.swift
//  ScotlandPOI
//
//  Created by Davide Agosti on 26/10/2019.
//  Copyright © 2019 Davide Agosti. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context:
        UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_
        uiView: MKMapView,
        context: UIViewRepresentableContext<MapView>) {
        
        // Put the code update
        let coordinate = CLLocationCoordinate2D(
            latitude: 55.8678118621, longitude: -4.28763)
        let span = MKCoordinateSpan(latitudeDelta: 0.05,
                                    longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        // Annotation Point
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Kelvin groove Art & Museum"
        annotation.subtitle = "Glasgow"
        uiView.addAnnotation(annotation)
    }
}

struct MapScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

