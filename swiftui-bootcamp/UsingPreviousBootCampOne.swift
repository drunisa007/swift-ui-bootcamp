//
//  UsingPreviousBootCampOne.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/19/21.
//

import SwiftUI

struct UsingPreviousBootCampOne: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "trash")
                    .font(.title2)
                    .foregroundColor(.black)
            }
            
            VStack{
                Divider()
                Text("Drunisa Katwal")
                    .font(.system(size: 30, weight: .semibold, design:.monospaced))
                    .foregroundColor(Color.gray)
                
                Text("Sunday 6:00 AM")
                    .font(.system(size: 16, weight: .semibold, design:.default))
                    .foregroundColor(Color.gray)
                    .padding(.top,10)
            }
            
            Spacer()
            
            VStack{
                Image(systemName: "cloud.sun.rain")
                    .renderingMode(.original)
                    .resizable()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
            
            }
        
            
            Spacer()
            Text("Partly Cloudly")
                .font(.system(size: 16, weight: .semibold, design:.default))
                .foregroundColor(Color.gray)
        
            HStack{
                Spacer()
                Text("32° C")
                    .font(.system(size: 40, weight:.semibold, design:.serif))
                Spacer()
                VStack{
                    HStack(spacing:4){
                        Image(systemName: "arrowtriangle.up")
                            .font(.system(size: 10, weight: .light))
                            .foregroundColor(.gray)
                        Text("32° C")
                            .font(.system(size: 18, weight:.light, design:.serif))
                            .foregroundColor(.gray)
                    }
                    HStack(spacing:4){
                        Image(systemName: "arrowtriangle.up")
                            .font(.system(size: 10, weight: .light))
                            .foregroundColor(.gray)
                        Text("29° C")
                            .font(.system(size: 18, weight:.light, design:.serif))
                            .foregroundColor(.gray)
                    }
         
                }
            
                Spacer()
            }
            Spacer()
            
            HStack(spacing:40){
                VStack{
                    Image(systemName: "sun.min")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                    
                    Text("Sun Shine")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Text("0.89")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                }
                VStack{
                    Image(systemName: "snowflake")
                        .font(.system(size: 50))
                        .scaledToFit()
                        .foregroundColor(.gray)
                    
                    Text("Snow Flake")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Text("0.89")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                }
                VStack{
                    Image(systemName: "cloud.moon")
                        .font(.system(size: 50))
                        .scaledToFit()
                        .foregroundColor(.gray)
                    
                    Text("Sun Shine")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Text("0.89")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                }
            }
            
                
            
            Spacer()
            
          
        }
        .padding()
    }
}

struct UsingPreviousBootCampOne_Previews: PreviewProvider {
    static var previews: some View {
        UsingPreviousBootCampOne()
    }
}
