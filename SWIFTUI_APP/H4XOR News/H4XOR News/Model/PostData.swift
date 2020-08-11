//
//  PostData.swift
//  H4XOR News
//
//  Created by oeng hokleng on 8/10/20.
//  Copyright © 2020 Oeng Hok Leng. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits : [Posts]
}

struct Posts: Decodable, Identifiable {
    var id : String{
        return objectID
    }
    let objectID : String
    let title : String
    let url : String?
    let points : Int
}
