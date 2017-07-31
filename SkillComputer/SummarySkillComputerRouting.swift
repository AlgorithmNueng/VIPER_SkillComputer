//
//  SummarySkillComputerRouting.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

protocol SummarySkillComputerRoutingInput {
    func navigationToSkillComputer()
    func passDataToSkillComputers(_ segue: UIStoryboardSegue)
}

class SummarySkillComputerRouting: SummarySkillComputerRoutingInput{
    
    var viewController: SummarySkillComputerViewController!
    
    func navigationToSkillComputer(){
        viewController.performSegue(withIdentifier: "addSkillComputer", sender: nil)
    }
    
    func passDatatoNextSence(_ segue: UIStoryboardSegue){
        if segue.identifier == "addSkillComputer"{
            self.passDataToSkillComputers(segue)
        }
    }
    
    func passDataToSkillComputers(_ segue: UIStoryboardSegue){
        print(viewController.mTableview.indexPathForSelectedRow)
        
//        if let selectIndexPath = viewController.mTableview.indexPathsForSelectedRows{
//            let selectedModel = viewController.skillComputers[selectIndexPath.row]
//            let showSkillComputerVC = segue.destination as! SKillComputerViewController
//            print(selectedModel)
//            showSkillComputerVC.present.receiveSkillComputer(selectedModel)
//        }
    }
}
