//
//  StreetAddress.swift
//  EquatableDemo
//
//  Created by Twisted Fate on 2019/12/20.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import Foundation

class StreetAddress: Equatable {

    let number: String
    let street: String
    let unit: String?
    
    init(_ number: String, _ street: String, unit: String? = nil) {
        self.number = number
        self.street = street
        self.unit = unit
    }
    
    static func == (lhs: StreetAddress, rhs: StreetAddress) -> Bool {
        return lhs.number == rhs.number && lhs.street == rhs.street
    }
}


struct GridPoint: Hashable {
    var x: Int
    var y: Int
    
    static func == (lhs: GridPoint, rhs: GridPoint) -> Bool {
         return lhs.x == rhs.x && lhs.y == rhs.y
     }

    func hash(into hasher: inout Hasher) {
         hasher.combine(x)
         hasher.combine(y)
     }
}


class Person: Codable {
    
    let name: String
    let sex: String
    let age: Int
    
}
