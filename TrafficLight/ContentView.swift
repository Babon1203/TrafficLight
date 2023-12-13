//
//  ContentView.swift
//  TrafficLight
//
//  Created by Кирилл Саталкин on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var indexTraffic = 0
    var body: some View {

            ZStack{
                
                Rectangle()
                    .frame(width: 200, height: 500)
                    .foregroundColor(.blue)
                    .cornerRadius(20)
                    .overlay(
                        Rectangle()
                            .stroke(Color.orange, lineWidth: 10))
                    .cornerRadius(10)
                VStack {
                    TrafficColors(color: .red, width: 150)
                        .opacity(indexTraffic == 1 ? 1 : 0.5)
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 5))
                    
                    TrafficColors(color: .yellow, width: 150)
                        .opacity(indexTraffic == 2 ? 1 : 0.5)
                    
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 5))
                    TrafficColors(color: .green, width: 150)
                        .opacity(indexTraffic == 3 ? 1 : 0.5)
                    
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 5))
                }
            }
            
            Spacer()
            ZStack{
                Rectangle()
                    .frame(width: 200, height: 100)
                    .foregroundColor(.red)
                    .cornerRadius(10)
                    .overlay(
                        Rectangle()
                            .stroke(Color.black, lineWidth: 5))
                    .cornerRadius(5)
                Button(action: {
                    indexTraffic += 1
                    if indexTraffic > 0 {
                    }
                    if indexTraffic > 3 {
                        indexTraffic = 0
                    }
                }) {
                    Text("")
                    if indexTraffic == 0 {
                        Text("START")
                            .font(.title)
                    }
                    if indexTraffic > 0 {
                        Text("NEXT")
                            .font(.title)
                    }
                }
            }
            .padding()
        }
    }
    
#Preview {
    ContentView()
    }

