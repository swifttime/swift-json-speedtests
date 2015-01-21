//
// Created by Rick Windham on 1/20/15.
// Copyright (c) 2015 David Wagner. All rights reserved.
//

import Foundation

class SwiftPureUser {
    var name: String?
    var handle: String?

    init(data: Dictionary<String,String>?) {
        if let d = data {
            name = d["name"]
            handle = d["handle"]
        }
    }
}

func parseArray(data: String) -> [Dictionary<String,String>]? {
    
    return nil;
}

class SiwftPureUsers {
    private var users = [SwiftPureUser]()

    init(string: String) {
        if let raw_array = parseArray(string) {
            for raw_user in raw_array {
                let user = SwiftPureUser(data: raw_user)
                users.append(user)
            }
        }
    }

    var count : Int {
        get {
            return users.count
        }
    }
}
