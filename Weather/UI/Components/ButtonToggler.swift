//
//  Button.swift
//  Weather
//
//  Created by naufal on 18/07/24.
//

import SwiftUI

struct ButtonToggler: View {
    
    let text: String
    let action: () -> Void
    var isNight: Bool
    
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .frame(width: 280, height: 60)
                .background(Color.white)
                .foregroundStyle(isNight ? .black : .blue)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(10)
        })
    }
}
