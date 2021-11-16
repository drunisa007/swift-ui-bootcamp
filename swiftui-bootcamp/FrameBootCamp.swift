//
//  FrameBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text("Hello Wrold")
            .background(.red)
            .frame(width: 100, height: 100)
            .background(.purple)
            .frame(maxWidth:.infinity)
            .background(.orange)
            .frame(maxHeight:.infinity)
            .background(.blue)
            .frame(width: 500, height: 500)
            .background(.black)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
