//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import SwiftUI

struct WeatherButton: View {
    let title: String
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold, design: .default))
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .cornerRadius(10)
        
    }
}

#Preview {
    WeatherButton(title: "Test Title", backgroundColor: .mint, textColor: .white)
}
