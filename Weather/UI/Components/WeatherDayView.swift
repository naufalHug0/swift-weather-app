//
//  WeatherDayView.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct WeatherDayView: View {
    
    var day: String
    var icon: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(day.uppercased().prefix(3))
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: icon)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 40,height:40)
            
            Text("\(temperature)°")
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .font(.system(size: 28, weight: .medium))
        }
    }
}
