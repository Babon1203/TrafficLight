//
//  TrafficColors.swift
//  TrafficLight
//
//  Created by Кирилл Саталкин on 13.12.2023.
//

import SwiftUI

struct TrafficColors: View {
    
    let color: Color
    let width: CGFloat
   
    var body: some View {
        
        Circle()
            .foregroundStyle(color)
            .frame(width: width)
            .shadow(radius: 10)
        
        
    }
}
