//
//  ContentView.swift
//  onecoachfitness
//
//  Copyrights © 2021 - Saffan Ahmed. All rights reserved.

import SwiftUI
import MapKit
import UIKit

struct ContentView: View {
    
    @State var selectedIndex = 0
//    let tabBarImageNames = ["map", "bolt.heart", "person", "gear"]
//    let tabBarTitleNames = ["Gym", "Exercise", "Profile", "Settings"]
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                    Text("Home")
                        .tag(0)
                    Text("Gym Search")
                        .tag(1)
                    Text("Workout")
                        .tag(2)
                    Text("Profile")
                        .tag(3)
                    Text("Settings")
                        .tag(4)
    //        VStack(spacing: 0){
    //            ZStack {
    //                switch selectedIndex {
    //                case 0:
    //                    NavigationView {
    //                        MapView().scaledToFill()
    //                            .navigationTitle("Gym Search")
    //                    }
    //
    //                case 1:
    //                    NavigationView {
    //                        ExerciseView()
    //                            .navigationTitle("Fitness Plan")
    //                    }
    //
    //                case 2:
    //                    NavigationView {
    //                        ProfileView()
    //                            .navigationTitle("Profile")
    //                    }
    //
    //                case 3:
    //                    NavigationView {
    //                        SettingsView()
    //                            .navigationTitle("Settings")
    //                    }
    //
    //                default:
    //                    Text("Remaining Tabs")
    //                }
    //            }
    //            //Spacer()
    //
    //            Divider()
    //                .padding(.bottom, 12)
    //
    //            HStack {
    //                ForEach(0..<4) { num in
    //                    Button(action: {
    //                        selectedIndex = num
    //                    }, label: {
    //                        Spacer()
    //                        Image(systemName: tabBarImageNames[num])
    //                            .font(.system(size: 27, weight: .bold))
    //                            .foregroundColor(selectedIndex == num ? Color(.red):
    //                                                .init(white: 0.8))
    //                        //Text(tabBarTitleNames[num])
    //                        Spacer()
    //                    })
    //
    //                }
    //            }
    //
    //        }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Divider()
            // Tab Bar Coming Soon?
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
