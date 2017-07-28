//
//  TheStatesJSONParser.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import Foundation

class TheStatesJSONParser {
    
    class func parse(_ data: Data) -> [TheStates] {
        var theStates = [TheStates]()
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let states = root["states"] as? [Any] {
                for state in states {
                    if let state = state as? [String: String] {
                        if let classificationName = state["classification"],
                            let title = state["title"],
                            let capital = state["capital"],
                            let population = state["population"],
                            let description = state["description"],
                            let flag = state["flag"]{
                            
                            if let theState = TheStates(classificationName: classificationName, title: title, capital: capital, population: population, description: description, flag: flag) {
                                theStates.append(theState)
                            }
                        }
                    }
                }
            }
        }
        return theStates
    }
}
