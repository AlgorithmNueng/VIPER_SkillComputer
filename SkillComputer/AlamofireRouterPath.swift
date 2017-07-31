//
//  AlamofireRouterPath.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation

extension AlamofireRouter {
    
    public var path: String {
        switch self {
        case .getAllSkillComputer:
            return "SkillComputer/7033783/0"
        case .getAllComputerGroup(let idLanguage):
            return "ComputerGroup/\(idLanguage)"
        }
    }
}
