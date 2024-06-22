//
//  WeatherModel.swift
//  SwiftUI-Weather
//
//  Created by Mahan Kheirollahi on 6/22/24.
//

import Foundation

struct WeatherModel : Identifiable {
    let id = UUID()
    let dayWeek: String
    let imageName: String
    let temperature: Int
    
    init(dayWeek: String, imageName: String, temperature: Int) {
        self.dayWeek = dayWeek
        self.imageName = imageName
        self.temperature = temperature
    }
}
