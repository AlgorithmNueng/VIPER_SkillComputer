//
//  SummarySkillComputerAssembly.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation

class SummarySkillComputerAssembly {
    static let sharedInstance = SummarySkillComputerAssembly()
    
    func configure(_ view: SummarySkillComputerViewController){
        let APIDataManagergetAllSkill = SkillComputerDataManager()
        let interactor = SummarySkillComputerInteractor()
        let presenter = SummarySkillComputerPresenter()
        let router = SummarySkillComputerRouting()
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        interactor.APIDataManagergetAllSkill = APIDataManagergetAllSkill
        router.viewController = view
    }
}
