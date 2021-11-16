//
//  IconBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct IconBootCamp: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .renderingMode(.template)
            //.font(.system(size: 80, weight: .semibold))
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .foregroundColor(.purple)
            .clipped()
        
    }
}

struct IconBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootCamp()
    }
}
