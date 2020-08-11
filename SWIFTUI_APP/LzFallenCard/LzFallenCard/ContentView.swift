//
//  ContentView.swift
//  LzFallenCard
//
//  Created by oeng hokleng on 8/6/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.33, green: 0.94, blue: 0.77, opacity: 0.8)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("OengHokLeng")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                )
                Text("Lz Fallen")
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.custom("Pacifico-Regular", size: 40))
                Text("IOS Developer.")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "phone.fill", phoneNumber: "+855 17781421")
                
                  InfoView(text: "oeng.hokleng07@gmail.com", phoneNumber: "envelope.fill")
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

