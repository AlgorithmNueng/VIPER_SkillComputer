//
//  SummarySkillComputerPresenter.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

protocol SummarySkillComputerPresenterInput: GetSkillComputerInteractorOutput , SummarySkillComputerViewControllerOutput{

}

class SummarySkillComputerPresenter: SummarySkillComputerPresenterInput{
    
    weak var view: SummarySkillComputerViewControllerInput!
    var interactor: GetSkillComputerInteractorInput!
    var router:SummarySkillComputerRoutingInput!
    
    func fetchGetAllSkillComputer(){
        interactor.getAllSkillComputer()
    }
    
    func providedSkillComputer(_ skillcomputers:[SkillComputerModel]) {
        view.displayGetSkillComputer(skillcomputers)
    }
    
    func providedServiceError(_ error: String) {
        view.displayErrorService(error)
    }
    
    func gotoSkillComputer(){
        router.navigationToSkillComputer()
    }
    
    func passDatatoNextSence(_ segue: UIStoryboardSegue){
        router.passDataToSkillComputers(segue)
    }
}
