//
//  SKillComputerAssembly.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

class SKillComputerAssembly {
    
    static let sharedInstance = SKillComputerAssembly()
    
    func configure(_ viewcontroller: SKillComputerViewController) {
        let APIGetComputerGroup = SkillComputerDataManager()
        let present = SKillComputerPresent()
        let interactor = SKillComputerInteractor()
        
        viewcontroller.present = present
        present.interactor = interactor
        present.view = viewcontroller
        interactor.present = present
        interactor.APIGetComputerGroup = APIGetComputerGroup
    }
}
