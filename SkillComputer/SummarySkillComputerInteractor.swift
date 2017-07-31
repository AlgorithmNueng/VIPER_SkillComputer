//
//  SummarySkillComputerInteractor.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation

//Request
protocol GetSkillComputerInteractorInput: class {
    func getAllSkillComputer()
}

protocol GetSkillComputerInteractorOutput: class {
    func providedSkillComputer(_ skillcomputers:[SkillComputerModel])
    func providedServiceError(_ error: String)
}

class SummarySkillComputerInteractor: GetSkillComputerInteractorInput {
    
    var presenter: GetSkillComputerInteractorOutput!
    var APIDataManagergetAllSkill: GetSkillComputerProtocol!
    
    func getAllSkillComputer(){
        APIDataManagergetAllSkill.getAllSkillComputer { (array, error) in
            if let computerskills = array {
                self.presenter.providedSkillComputer(computerskills)
            }else if let error = error{
                self.presenter.providedServiceError(error)
            }
        }
    }
}
