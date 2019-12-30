//
//  StreetAddress.swift
//  EquatableDemo
//
//  Created by Twisted Fate on 2019/12/20.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable {
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coodinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var locationCoordiante: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coodinates.latitude, longitude: coodinates.longtitude)
    }
    enum Category: String, CaseIterable, Codable {
        case featured =  "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longtitude: Double
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

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

