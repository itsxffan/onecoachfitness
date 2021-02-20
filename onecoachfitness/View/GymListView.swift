//
//  GymListView.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 20/02/2021.
//

import SwiftUI

struct GymListView: View {
    @ObservedObject var gymLocationManager = GymLocationManager()
    
    var body: some View {
        List(gymLocationManager.gymLocations) { location in
            VStack {
                Text(String(location.name!))
                Spacer()
                Text(location.vicinity!)
            }
        }
        .onAppear {
            self.gymLocationManager.fetchData()
        }
    }
}

