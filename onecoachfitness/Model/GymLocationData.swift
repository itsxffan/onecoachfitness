//
//  GymLocationData.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 20/02/2021.
//

import Foundation

struct GymLocations: Decodable {
    let results: [GymLocation]
    
}

struct GymLocation: Decodable, Identifiable{
    var id: String {
        return place_id
    }
    let place_id: String
    let lat: Int?
    let lng: Int?
    let vicinity: String?
}
