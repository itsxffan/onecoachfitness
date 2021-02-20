//
//  ContentView.swift
//  onecoachfitness
//
//  Copyrights © 2021 - Saffan Ahmed. All rights reserved.

import SwiftUI
import MapKit
import UIKit

struct ContentView: View {
    
    @ObservedObject var gymLocationManager = GymLocationManager()
    @State var selectedIndex = 0
//    let tabBarImageNames = ["map", "bolt.heart", "person", "gear"]
//    let tabBarTitleNames = ["Gym", "Exercise", "Profile", "Settings"]
    
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                    Text("Home")
                        .tag(0)
                    Text("Gym Search")
                        VStack {
                            MapView()
                                .scaledToFit()
                            List(gymLocationManager.gymLocations) { location in
                                Text(location.vicinity!)
                            }
                        }
                        .tag(1)
                    Text("Workout")
                        .tag(2)
                    Text("Profile")
                        .tag(3)
                    Text("Settings")
                        .tag(4)
  
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Divider()
            
            TabBarView(selectedIndex: $selectedIndex)
        }
        .onAppear {
            self.gymLocationManager.fetchData()
        }
    }
}
    
    //TabView {
    //    VStack {
    //        MapView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    //    }
    //    .tabItem {
    //        Image(systemName: "map")
    //        Text("Map")
    //
    //    }
    //
    //    ExerciseView()
    //        .tabItem {
    //            Image(systemName: "heart")
    //            Text("Exercise")
    //        }
    //
    //    ProfileView()
    //        .tabItem {
    //            Image(systemName: "person")
    //            Text("Profile")
    //        }
    //
    //    SettingsView()
    //        .tabItem {
    //            Image(systemName: "person")
    //            Text("Settings")
    //        }
    //}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
