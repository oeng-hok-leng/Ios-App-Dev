//
//  DetailView.swift
//  H4XOR News
//
//  Created by oeng hokleng on 8/10/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}


