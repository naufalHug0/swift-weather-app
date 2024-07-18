//
//  CityTextView.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct CityTextView: View {
    
    var city: String
    
    var body: some View {
        Text(city)
            .multilineTextAlignment(.center)
            .font(.system(size: 40, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}
