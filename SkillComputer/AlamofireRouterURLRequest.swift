//
//  AlamofireRouterURLRequest.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    public func asURLRequest() throws -> URLRequest {
        let url = URL(string: baseURLString + path)!
        print(url)
        var mutableURLRequest = URLRequest(url: url)
        mutableURLRequest.httpMethod = method.rawValue
        mutableURLRequest.httpBody = rawBody as Data
        return mutableURLRequest
    }
}
