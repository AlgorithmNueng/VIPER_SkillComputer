//
//  AlamofireRouterBaseURL.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter{
    public var baseURLString: String {
        switch self {
        case .getAllSkillComputer:
            return "http://apps2.jobtopgun.com/api/sr.php/"
        case .getAllComputerGroup:
           return "http://apps2.jobtopgun.com/api/md.php/"
        }
    }
}
