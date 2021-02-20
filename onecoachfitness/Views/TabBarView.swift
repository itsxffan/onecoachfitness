//
//  TabBarView.swift
//  onecoachfitness
//
//  Created by Saffan Ahmed on 20/02/2021.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedIndex: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedIndex: Binding.constant(true))
    }
}
