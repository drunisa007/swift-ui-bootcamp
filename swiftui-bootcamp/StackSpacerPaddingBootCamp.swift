//
//  StackSpacerPaddingBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/19/21.
//

import SwiftUI

struct StackSpacerPaddingBootCamp: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "gear")
                    .font(.title)
                Spacer()
                Image(systemName: "xmark")
                    .font(.title)
            }
            Spacer()
           RoundedRectangle(cornerRadius: 20)
                .fill(.purple)
                .frame(width: 200, height: 40)
                .overlay(Text("Click me").foregroundColor(.white).font(.title2))
        }
        .padding()
    }
}

struct StackSpacerPaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StackSpacerPaddingBootCamp()
    }
}
