//
//  ContentView.swift
//  Weather
//
//  Created by naufal on 17/07/24.
//

import SwiftUI

struct WeatherData: Identifiable {
    let id = UUID()
    let day: String
    let temperature: Int
    let icon: String
}

struct ContentView: View {
    
    let weather_datas: [WeatherData] = [
        WeatherData(
            day:"Tuesday",
            temperature:Int.random(in: 20..<40),
            icon:"cloud.fill"
        ),
        WeatherData(
            day:"Wednesday",
            temperature:Int.random(in: 20..<40),
            icon:"cloud.drizzle.fill"
        ),
        WeatherData(
            day:"Thursday",
            temperature:Int.random(in: 20..<40),
            icon:"cloud.sun.fill"
        ),
        WeatherData(
            day:"Friday",
            temperature:Int.random(in: 20..<40),
            icon:"wind"
        ),
        WeatherData(
            day:"Saturday",
            temperature:Int.random(in: 20..<40),
            icon:"cloud.bolt.fill"
        )
    ]
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(city: "Jakarta")
                
                MainWeatherStatusView(icon: "cloud.sun.fill", temperature: 35, isNight:isNight)
                .padding(.bottom, 40)
                
                WeekWeatherView(weather_datas: weather_datas)
                
                Spacer()
                
                ButtonToggler(text:"Change Day Time",action: {
                    isNight.toggle()
                }, isNight: isNight)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
