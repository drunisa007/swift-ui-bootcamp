//
//  BackgroundAndOverLayBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct BackgroundAndOverLayBootCamp: View {
    var body: some View {
        Image(systemName: "heart")
            .font(.system(size: 40, weight: .light))
            .foregroundColor(.white)
            .background(
            Circle()
                .fill(.orange)
                .frame(width: 100, height: 100)
                .overlay(
                Circle()
                    .fill(.purple)
                    .frame(width: 40, height: 40)
                    .overlay(
                    Text("1")
                        .foregroundColor(.white)
                        .font(.headline)
                    )
                
                ,
                alignment: .topTrailing
                )
            )
    }
}

struct BackgroundAndOverLayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverLayBootCamp()
            
    }
}
