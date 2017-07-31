//
//  ViewController.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

protocol SKillComputerViewControllerOutput {
    func getAllComputerGroup()
    func receiveSkillComputer(_ skillComputer: SkillComputerModel)
}

protocol SKillComputerViewControllerInput {
    func disPlaycomputerGroup(_ computergroups: [ComputerGroupModel])
    func disPlayError(_ error:String)
}

class SKillComputerViewController: UIViewController, SKillComputerViewControllerInput {
    
    var present: SKillComputerViewControllerOutput!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SKillComputerAssembly.sharedInstance.configure(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        present.getAllComputerGroup()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disPlaycomputerGroup(_ computergroups: [ComputerGroupModel]){
//        print(computergroups)
    }
    
    func disPlayError(_ error:String){
        self.showAlert(nil, message: error, view: self)
    }
}

