//
//  TheStates.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import Foundation

struct TheStates {
    let classification: State
    let title: String
    let capital: String
    let population: String
    let description: String
    let flag: String
    
    init(classification: State, title: String, capital: String, population: String, description: String, flag: String) {
        self.classification = classification
        self.title = title
        self.capital = capital
        self.population = population
        self.description = description
        self.flag = flag

    }
    
    init?(classificationName: String, title: String, capital: String, population: String, description: String, flag: String) {
        if let classification = State(rawValue: classificationName) {
            self.init(classification: classification, title: title, capital: capital, population: population, description: description, flag: flag)
        } else {
            return nil
        }
    }
}
