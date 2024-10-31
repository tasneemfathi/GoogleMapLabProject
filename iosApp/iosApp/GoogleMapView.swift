//
//  GoogleMapView.swift
//  iosApp
//
//  Created by tasneem .. on 27/10/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let options = GMSMapViewOptions()
        options.camera = GMSCameraPosition.camera(withLatitude: 24.7136, longitude: 46.6753, zoom: 10.0)

        let mapView = GMSMapView(options: options)

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753)
        marker.title = "KSA"
        marker.snippet = "Riyadh"
        marker.map = mapView

        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {}
}
