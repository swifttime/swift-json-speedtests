//
// Created by Rick Windham on 1/20/15.
// Copyright (c) 2015 David Wagner. All rights reserved.
//

import Foundation

class SwiftPureUser {
    var name: String?
    var handle: String?

    init(data: JSValue?) {
        if let d = data {
            name = d["name"].string
            handle = d["handle"].string
        }
    }
}

func parseArray(data: String) -> JSValue? {

    return JSValue.parse(data).value
}

class SwiftPureUsers {
    private var users = [SwiftPureUser]()

    init(string: String) {
        if let raw_array = parseArray(string) {
            if let jsArray = raw_array.array {
                for jsUser in jsArray {
                    let user = SwiftPureUser(data: jsUser)
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
