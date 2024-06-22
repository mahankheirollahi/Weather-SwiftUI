//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Mahan Kheirollahi on 6/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherView(imageName: "cloud.sun.fill", temperature: 76)
                
                HStack(spacing:20){
                    WeatherDayView(dayWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    WeatherDayView(dayWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    WeatherDayView(dayWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    WeatherDayView(dayWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                Spacer()
                Button{
                    print("Tapped")
                }label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor:.white)
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
    var dayWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView : View {
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32,weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView:View {
    var imageName: String
    var temperature: Int
    var body: some View{
            VStack(spacing: 10){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180,height: 180)
                
                Text("\(temperature)°")
                    .font(.system(size: 70,weight: .medium))
                    .foregroundStyle(.white)
                
            }.padding(.bottom,40)
    }}


