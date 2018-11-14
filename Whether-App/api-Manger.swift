//
//  api-Manger.swift
//  Whether-App
//
//  Created by Jacob Tassinari on 11/14/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct ApiManger {
    static func getWhether(at location: location){
        let root = "https://api.darksky.net/forecast/"
        let key = APIKeys.DarkSky
        let url = "\(root)\(key)/\(location.latitude),\(location.longitude)"
        Alamofire.request(url).responseJSON { response in
            switch response.result{
            case .success(let value):
                print(value)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

