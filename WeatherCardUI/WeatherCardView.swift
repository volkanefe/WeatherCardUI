//
//  WeatherCardView.swift
//  WeatherCardUI
//
//  Created by VOLKAN EFE on 4.07.2025.
//

import SwiftUI

struct WeatherCardView: View {
    var body: some View {
        ZStack {
            Image("weather_background")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .overlay(Color.black.opacity(0.5))
            
            VStack(alignment: .leading, spacing: 8){
                Text("İstanbul")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("26°C")
                    .font(.system(size:64))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                HStack {
                    Image(systemName: "cloud.sun.fill")
                        .foregroundColor(.yellow)
                        .font(.largeTitle)
                    Text("Parçalı Bulutlu")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
            }
            .padding()
        }
        .frame(height: 200)
        .cornerRadius(20)
        .shadow(radius:10)
        .padding()
    }
}

#Preview {
    WeatherCardView()
}
