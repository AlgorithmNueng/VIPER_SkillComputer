//
//  ReuseIdentifierProtocol.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

protocol ReuseIdentifierProtocol: class {
    static var defualtReuseIdentifier:String { get }
}

extension ReuseIdentifierProtocol where Self: UIView{
    static var defualtReuseIdentifier:String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
