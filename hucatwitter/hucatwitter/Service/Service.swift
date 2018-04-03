//
//  Service.swift
//  hucatwitter
//
//  Created by HungNV on 4/2/18.
//  Copyright © 2018 HungNV. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    static let sharedInstance = Service()
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
        let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("/twitter/home")
        request.perform(withSuccess: { (homeDatasource) in
            
            completion(homeDatasource)
            
        }) { (err) in
            print("Failed to fetch json...", err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON Error")
        }
    }
}
