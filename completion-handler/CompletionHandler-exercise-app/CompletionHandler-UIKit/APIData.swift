//
//  DataSource.swift
//  CompletionHandler-UIKit
//
//  Created by Sophie Shchukina on 02.14.2024

import Foundation

/// A structure which provides data for simulating a data request in different view controllers
struct APIData {
    var name:String
    
//    Return a different array of API data based on the item parameter
    static func getNames(item: Int) -> [APIData] {
        if item == 1 {
            return [APIData(name: "Stewart"),
                    APIData(name: "Emily"),
                    APIData(name: "Aidan")]
        } else {
            return [APIData(name: "John"),
            APIData(name: "Paul"),
            APIData(name: "George"),
            APIData(name: "Ringo")]
        }
    }
}
