//
//  AlamofireRouterMethod.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter{
    public var method: Alamofire.HTTPMethod {
        switch self {
        case .getAllSkillComputer:
            return .get
        case .getAllComputerGroup:
            return .get
        }
    }
}
