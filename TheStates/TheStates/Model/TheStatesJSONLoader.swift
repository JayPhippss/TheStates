//
//  TheStatesJSONLoader.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import Foundation

class TheStatesJSONLoader {
    
    class func load(fileName: String) -> [TheStates] {
        var states = [TheStates]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            states = TheStatesJSONParser.parse(data)
        }
        
        return states
    }
}
