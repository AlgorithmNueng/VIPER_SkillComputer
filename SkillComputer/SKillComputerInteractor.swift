//
//  SKillComputerInteractor.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation

protocol SKillComputerInteractorInput {
    func getAllComputerGroup()
    func configureModel(_ dict:SkillComputerModel)
}

protocol SKillComputerInteractorOutput {
    func providedComputerGroup(_ computerGroups:[ComputerGroupModel])
    func providedServiceError(_ error: String)
}

class SKillComputerInteractor: SKillComputerInteractorInput{
    
    var skillComputer:SkillComputerModel?
    var present: SKillComputerInteractorOutput!
    var APIGetComputerGroup: GetComputerGroupProtocol!
    
    func configureModel(_ dict:SkillComputerModel){
        self.skillComputer = dict
    }
    
    func getAllComputerGroup(){
        APIGetComputerGroup.getAllComputerGroup { (array, error) in
            if let computergroups = array{
                self.present.providedComputerGroup(computergroups)
            }else if let error = error{
                self.present.providedServiceError(error)
            }
        }
    }
}
