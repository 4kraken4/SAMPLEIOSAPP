//
//  WeatherHomeView.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-10.
//

import SwiftUI

struct WeatherHomeView: View {
    @StateObject var weatherVM : WeatherHomeViewModel = WeatherHomeViewModel()
    
    var body: some View {
        VStack(content: {
            List {
                ForEach(weatherVM.weatherData, id: \.self) {
                    data in HStack {
                        Text(data.dayName)
                        
                        HStack{
                            Spacer()
                            Image(systemName: data.icon)
                            Text(data.weatherName)
                            Spacer()
                        }
                        Text(data.temp)
                    }.padding()
                        .foregroundStyle(.black.opacity(0.8))
                        .swipeActions(edge: .trailing, content: {
                            Button {
                            } label: {
                                Text("Edit")
                            }.tint(.yellow)
                            
                            Button(action: {
                                withAnimation {
                                    weatherVM.weatherData.removeAll()
                                }
                            }, label: {
                                Text("Delete")
                            }).tint(.red)

                        })
                }
            }
        })
    }
}

#Preview {
    WeatherHomeView()
}
