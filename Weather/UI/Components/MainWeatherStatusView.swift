//
//  MainWeatherStatusView.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct MainWeatherStatusView: View {
    
    var icon: String
    var temperature: Int
    var isNight: Bool
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: isNight ? "moon.stars.fill" : icon)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
