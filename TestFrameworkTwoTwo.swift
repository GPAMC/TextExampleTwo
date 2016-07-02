//
//  TestFrameworkTwo.swift
//  TestFrameworkTwo
//
//  Created by Graham Connolly on 02/07/2016.
//  Copyright © 2016 Graham Connolly. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

public class TestFrameworkTwoTwo {
    
    public class func fetchJson() {
        Alamofire.request(.GET, "http://blog.teamtreehouse.com/api/get_recent_summary/?count=20", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }

    }
    
    public class func fetchCount() {
        Alamofire.request(.GET, "http://blog.teamtreehouse.com/api/get_recent_summary/?count=20", parameters: ["foo": "bar"])
            .responseObject { (response: Response<TreehouseObject, NSError>) in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("\n\nCount: \(JSON.count)\n\n\n")
                }
        }

    }
    
    public class func fetchAwesomeString(awesomeString: String) {
        print("\(awesomeString) is Awesome")
    }
}
