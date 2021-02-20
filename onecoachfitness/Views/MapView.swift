//
//  MapView.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 19/02/2021.
//

import SwiftUI
import MapKit
import UIKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

