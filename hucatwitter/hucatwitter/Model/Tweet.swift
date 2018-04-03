//
//  Tweet.swift
//  hucatwitter
//
//  Created by HungNV on 3/31/18.
//  Copyright © 2018 HungNV. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Tweet {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.message = json["message"].stringValue
    }
}
