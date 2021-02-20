//
//  GymLocationManager.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 20/02/2021.
//

import SwiftUI

class GymLocationManager: ObservableObject {
    
    @Published var gymLocations = [GymLocation]()
    
    func fetchData() {
        if let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=51.498672,-0.02467349&radius=1500&type=gym&keyword=gym&key=AIzaSyC8AvQK9sEzLjC07e0ds6zonq_pnH33grE") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(GymLocations.self, from: safeData)
                            DispatchQueue.main.async {
                                self.gymLocations = results.results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
