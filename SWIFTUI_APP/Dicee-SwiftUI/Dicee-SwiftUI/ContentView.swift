//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by oeng hokleng on 8/7/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import SwiftUI

 struct ContentView: View {
    
    @State var leftCard = 1
    @State var rightCard = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftCard)
                    DiceView(n: rightCard)
                }

                .padding(.horizontal)
                Spacer()
                Button(action:{
                    self.leftCard = Int.random(in: 1...6)
                    self.rightCard = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding()
                }
                .background(Color.red)
            }
            
        
    }
        
    }
}

struct DiceView: View {
    let n : Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


