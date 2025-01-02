//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, C.A")
               
                MainWeatherView(isNight: isNight)
                
                HStack(spacing: 18) {
                    ForEach(WeatherAppMockData.weatherData, id: \.dayOfWeek) { data  in
                        WeatherDayView(
                            dayOfWeek: data.dayOfWeek ,
                            imageName: data.imageName,
                            temperature: data.temperature)
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(
                        title: "Change Day Time",
                        backgroundColor: .white, textColor: .blue)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
               
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    let isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: isNight ? [.black, .gray] : [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
//        ContainerRelativeShape()
//            .fill(Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct MainWeatherView: View {
    let isNight: Bool
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.mint, .red, .orange)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                
            
            Text("76°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
        .padding()
    }
}

struct CityTextView: View {
    let cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding(20)
    }
}
