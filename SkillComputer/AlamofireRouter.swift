//
//  AlamofireRouter.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation
import Alamofire

enum AlamofireRouter: URLRequestConvertible{
    case getAllSkillComputer
    case getAllComputerGroup(idLanguage:String)
}
