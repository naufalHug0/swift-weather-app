//
//  BackgroundView.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [Color("bg-blue"), Color("bg-light-blue")]), startPoint: .topLeading,
//            endPoint: .bottomTrailing)
//            .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}
