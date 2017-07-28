//
//  state.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

enum State: String {
    case alabama
    case alaska
    case arizona
    case arkansas
    case california
    case colorado
    case connecticut
    case delaware
    case florida
    case georgia
    case hawaii
    case idaho
    case illinois
    case indiana
    case iowa
    case kansas
    case kentucky
    case louisiana
    case maine
    case maryland
    case massachusetts
    case michigan
    case minnesota
    case mississippi
    case missouri
    case montana
    case nebraska
    case nevada
    case newhampshire
    case newjersey
    case newmexico
    case newyork
    case northcarolina
    case northdakota
    case ohio
    case oklahoma
    case oregon
    case pennsylvania
    case rhodeisland
    case southcarolina
    case southdakota
    case tennessee
    case texas
    case utah
    case vermont
    case virginia
    case washington
    case westvirginia
    case wisconsin
    case wyoming
    
    
    var image: UIImage? {
        return UIImage(named: self.rawValue)
    }
}

