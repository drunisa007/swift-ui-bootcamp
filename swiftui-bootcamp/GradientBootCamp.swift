//
//  GradientBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        Rectangle()
            .fill(
//                LinearGradient(colors: [Color.red,Color.red.opacity(0.5)],
//                               startPoint: .trailing, endPoint: .bottom)
//                RadialGradient(colors: [Color.red,Color.red.opacity(0.7)], center: .topLeading, startRadius: 1, endRadius:4)
                
                
            )
            .frame(width: 300, height: 200)
            
    }
}

struct GradientBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootCamp()
    }
}
