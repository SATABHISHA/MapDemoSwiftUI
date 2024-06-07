//
//  GoogleMapsView.swift
//  MapTestDemo
//
//  Created by Debashis Pal on 06/03/23.
//

import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    
    private let zoom: Float = 15.0
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        
    }
}

struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}
