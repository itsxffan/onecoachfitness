//
//  TabBarView.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 20/02/2021.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedIndex: Int
    @Namespace private var currentTab
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs.indices) { index in
                GeometryReader { geometry in
                    VStack(spacing: 4) {
                        if selectedIndex == index {
                            Color(.label)
                                .frame(height: 2)
                                .offset(y: -8)
                                .matchedGeometryEffect(id: "currentTab", in: currentTab)
                        }
                        
                        if tabs[selectedIndex].label == "Settings" && tabs[index].label == "Settings" {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(180))
                        } else {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(0))
                        }
                        
                        Text(tabs[index].label)
                            .font(.caption2)
                            .fixedSize()
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: geometry.size.width / 2, height: 44, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selectedIndex == index ? Color(.label) : .secondary)
                    .onTapGesture {
                        withAnimation {
                            selectedIndex = index
                        }
                    }
                }
                .frame(height: 44, alignment: .bottom)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedIndex: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}

struct Tab {
    let image: String
    let label: String
}

let tabs = [
    Tab(image: "house", label: "Home"),
    Tab(image: "map", label: "Gym Search"),
    Tab(image: "bolt.heart", label: "Workout"),
    Tab(image: "person", label: "Profile"),
    Tab(image: "gear", label: "Settings")
]
