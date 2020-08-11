//
//  ContentView.swift
//  H4XOR News
//
//  Created by oeng hokleng on 8/9/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManger = NetworkManger()
    
    var body: some View {
        NavigationView {
            List(networkManger.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            self.networkManger.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



