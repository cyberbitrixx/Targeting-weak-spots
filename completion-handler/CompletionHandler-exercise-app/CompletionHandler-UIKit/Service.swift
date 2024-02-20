//
//  Service.swift
//  CompletionHandler-UIKit
//
//  Created by sofia on 19.02.2024.
//  Copyright © 2024 CreaTECH Solutions. All rights reserved.
//

import Foundation

/// A class which provides a reusable function for simulating data requests from different places in the app. Completion handler accepts an array of objects of type APIData, which further can be used to populate a table view with APIData items
class Service {
// MARK: - Renewed getDataSimulator (completion handler integrated). Now the function is going to retrieve the data, and only after that complete the action thanks to CH
    
    static func getDataSimulator(item: Int, completion: @escaping ([APIData]) -> Void) {
        let dispatchTime = DispatchTime.now() + 2
//        Making the data request in the background thread
        DispatchQueue.global(qos: .background).asyncAfter(deadline: dispatchTime) {
            // The api request is now complete and returns
//            The fetched data is being assigned to apiData variable
            let returnedData = APIData.getNames(item: item)
//            Enclose the completion block, which reloads data, withing DispatchQueue.main thread (UI updates should always be withing main thread)
            DispatchQueue.main.async {
                completion(returnedData)
            }
        }
    }
}
