//
//  BackgroundBootCampRevision.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/19/21.
//

import SwiftUI

struct BackgroundBootCampRevision: View {
    var body: some View {
        
       Image(systemName: "heart")
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .frame(width: 40, height: 40)
            .background(
               Circle()
                .fill(.purple)
                .frame(width: 80, height: 80)
                .overlay(
                 Circle()
                    .fill(.orange)
                    .overlay(Text("1").foregroundColor(.white))
                    .frame(width:25,height:25),
                 alignment: .topTrailing
                )
              
            )
    }
}

struct BackgroundBootCampRevision_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBootCampRevision()
    }
}
