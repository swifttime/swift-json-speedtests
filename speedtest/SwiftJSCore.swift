//
//  SwiftJSCore.swift
//  speedtest
//
//  Created by Rick Windham on 2/27/15.
//  Copyright (c) 2015 Rick Windham. All rights reserved.
//

import Foundation
import JavaScriptCore

class SwiftJSCUser {
    var name: String?
    var handle: String?
    
    init(data: AnyObject?) {
        if let d: AnyObject = data {
            let d2 = d as NSDictionary
            
            name = d2["name"]! as? String
            handle = d2["handle"]! as? String
        }
    }
}

func parseArray(data: String) -> [AnyObject]? {
    return JSContext().objectForKeyedSubscript("JSON").objectForKeyedSubscript("parse").callWithArguments([data]).toArray()
}

class SwiftJSCUsers {
    private var users = [SwiftJSCUser]()
    
    init(string: String) {
        if let raw_array = parseArray(string) {
            if let jsArray = raw_array as? [[String:String]] {
                for jsUser in jsArray {
                    let user = SwiftJSCUser(data: jsUser)
                    users.append(user)
                }
            }
        }
    }
    
    var count : Int {
        get {
            return users.count
        }
    }
}
