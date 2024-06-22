//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Mahan Kheirollahi on 6/22/24.
//

import SwiftUI

let weatherModels: [WeatherModel] = [
    WeatherModel(dayWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76),
    WeatherModel(dayWeek: "WED", imageName: "sun.max.fill", temperature: 88),
    WeatherModel(dayWeek: "THU", imageName: "wind.snow", temperature: 55),
    WeatherModel(dayWeek: "FRI", imageName: "sunset.fill", temperature: 60),
    WeatherModel(dayWeek: "SAT", imageName: "snow", temperature: 25),
]

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing:20){
                    ForEach(weatherModels) { model in
                                   WeatherDayView(weatherModel: model)
                    }

                }
                Spacer()
                Button{
                    isNight.toggle()
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
    let weatherModel: WeatherModel
    
    var body: some View {
        VStack{
            Text(weatherModel.dayWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: weatherModel.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(weatherModel.temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
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


