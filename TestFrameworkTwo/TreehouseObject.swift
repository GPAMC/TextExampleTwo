//
//  TreehouseObject.swift
//  TestFrameworkTwo
//
//  Created by Graham Connolly on 02/07/2016.
//  Copyright © 2016 Graham Connolly. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import ObjectMapper


class TreehouseObject: Mappable {
    var count: Int?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        count <- map["count_total"]
        
    }
}