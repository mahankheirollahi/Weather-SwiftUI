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
            LinearGradient(gradient: Gradient(colors: [.blue,.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium))
                    .foregroundColor(.white)
                    .padding()
               
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundStyle(.white)
                    
                }
                Spacer()
            }
            
        }
      
    }
}

#Preview {
    ContentView()
}
