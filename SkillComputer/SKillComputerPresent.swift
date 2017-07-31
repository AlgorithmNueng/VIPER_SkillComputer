//
//  SKillComputerPresent.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation

protocol SKillComputerPresentPresenterInput: SKillComputerInteractorOutput, SKillComputerViewControllerOutput{
    
}

class SKillComputerPresent: SKillComputerPresentPresenterInput {
    
    var view: SKillComputerViewControllerInput!
    var interactor: SKillComputerInteractorInput!
    
    func receiveSkillComputer(_ skillComputer: SkillComputerModel){
        interactor.configureModel(skillComputer)
        print(skillComputer)
    }
    
    func getAllComputerGroup(){
        interactor.getAllComputerGroup()
    }
    
    func providedComputerGroup(_ computerGroups:[ComputerGroupModel]) {
        view.disPlaycomputerGroup(computerGroups)
    }
    
    func providedServiceError(_ error: String) {
        view.disPlayError(error)
    }
}
