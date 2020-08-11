//
//  InfoView.swift
//  LzFallenCard
//
//  Created by oeng hokleng on 8/7/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let phoneNumber : String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: text)
                        .foregroundColor(.green)
                    Text(phoneNumber)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }
        )
            .padding(.all)
    }
}



