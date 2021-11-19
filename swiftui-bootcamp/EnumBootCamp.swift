//
//  EnumBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/19/21.
//

import SwiftUI

struct EnumBootCamp: View {
    
    var fillColor : Color
    var fruitName : String;
    var count : Int
    
    init(title: Fruit,count : Int){
        if title == .apple{
            fillColor = .red
            fruitName = "Apple"
        }
        else if title == .orange{
            fillColor = .orange
            fruitName = "Orange"
        }
        else{
            fillColor = .purple
            fruitName = "Peaches"
        }
        
        self.count = count;
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(fillColor)
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            
            VStack(spacing:15){
                Text("\(count)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("\(fruitName)".capitalized)
                    .foregroundColor(.white)
                    .font(.title)
                
            }
     
          
        }
    }
}

struct EnumBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            EnumBootCamp(title: .apple, count: 200)
            EnumBootCamp(title: .orange, count: 100)
        }
     
    }
}
