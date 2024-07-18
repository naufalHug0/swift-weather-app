//
//  WeekWeatherView.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct WeekWeatherView: View {
    
    var weather_datas: [WeatherData]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(weather_datas) { data in
                WeatherDayView(day: data.day, icon: data.icon, temperature: data.temperature)
            }
        }
    }
}
