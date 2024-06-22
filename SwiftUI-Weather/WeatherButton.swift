//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Mahan Kheirollahi on 6/22/24.
//

import SwiftUI


struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
