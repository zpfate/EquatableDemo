//
//  ViewController.swift
//  EquatableDemo
//
//  Created by Twisted Fate on 2019/12/20.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import UIKit

enum Category: String, CaseIterable, Codable {
     case featured =  "Featured"
     case lakes = "Lakes"
     case rivers = "Rivers"
    
    static var allCases:[Category] {
        return [.featured, .lakes, .rivers]
    }
 }

class ViewController: UIViewController {

    /**
    Hashable:

    1.如果两个对象相等 则hashValue一定要等
    2.两个对象的hashValue相等 对象不一定相等
    3.Swift 中 Hashable 一定是 Equatable，因为前者继承了后者。
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let addresses = [StreetAddress("1490", "Grove Street"),
//                         StreetAddress("2119", "Maple Avenue"),
//                         StreetAddress("1400", "16th Street")]
//        let home = StreetAddress("1400", "16th Street")
////        print(addresses.contains(home))
//
//        var tappedPoints: Set = [GridPoint(x: 2, y: 3), GridPoint(x: 4, y: 1)]
//        let nextTap = GridPoint(x: 0, y: 1)
//        let newTap = GridPoint(x: 1, y: 1)
//
//        if tappedPoints.contains(nextTap) {
//            print("Already tapped at (\(nextTap.x), \(nextTap.y)).")
//        } else {
//            tappedPoints.insert(nextTap)
//            print("New tap detected at (\(nextTap.x), \(nextTap.y)).")
//        }
//
//        let dict = [newTap: "888", nextTap: "ttt"]
//        print(dict[newTap])
        
        print(Category.allCases)
        
    }



}

