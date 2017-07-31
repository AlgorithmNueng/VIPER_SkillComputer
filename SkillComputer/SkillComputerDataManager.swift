//
//  SkillComputerDataManager.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import Foundation
import Alamofire

protocol GetSkillComputerProtocol: class {
    func getAllSkillComputer(completion:@escaping ([SkillComputerModel]?,String?) -> Void)
}

protocol GetComputerGroupProtocol: class {
    func getAllComputerGroup(completion:@escaping ([ComputerGroupModel]?,String?) -> Void)
}

public class SkillComputerDataManager: GetSkillComputerProtocol, GetComputerGroupProtocol{
    
    func getAllSkillComputer(completion:@escaping ([SkillComputerModel]?,String?) -> Void) {
        Alamofire.request(AlamofireRouter.getAllSkillComputer).responseJSON {
            response in
            switch response.result {
            case .success:
                let re =  response.result.value as! NSDictionary
                if re.object(forKey: "success") as! Int == 1 {
                    if let data = re.object(forKey: "data") as? [[String:Any]] {
                        let skillComputerArray = data.map({ (skillcomputerDict) -> SkillComputerModel in
                            let ID_JSK = skillcomputerDict["ID_JSK"] as? String ?? ""
                            let ID_RESUME = skillcomputerDict["ID_RESUME"] as? String ?? ""
                            let ID_COMPUTER = skillcomputerDict["ID_COMPUTER"] as? String ?? ""
                            let OTHER_COMPUTER = skillcomputerDict["OTHER_COMPUTER"] as? String ?? ""
                            let LEVEL_SKILL = skillcomputerDict["LEVEL_SKILL"] as? String ?? ""
                            let ID_GROUP = skillcomputerDict["ID_GROUP"] as? String ?? ""
                            let COMPUTER_NAME_TH = skillcomputerDict["COMPUTER_NAME_TH"] as? String ?? ""
                            let COMPUTER_NAME_EN = skillcomputerDict["COMPUTER_NAME_EN"] as? String ?? ""
                            let COMPUTER_LEVEL_TH = skillcomputerDict["COMPUTER_LEVEL_TH"] as? String ?? ""
                            let COMPUTER_LEVEL_EN = skillcomputerDict["COMPUTER_LEVEL_EN"] as? String ?? ""
                            
                            let skillComputer = SkillComputerModel(ID_JSK: ID_JSK, ID_RESUME: ID_RESUME, ID_COMPUTER: ID_COMPUTER, OTHER_COMPUTER: OTHER_COMPUTER, LEVEL_SKILL: LEVEL_SKILL, ID_GROUP: ID_GROUP, COMPUTER_NAME_TH: COMPUTER_NAME_TH, COMPUTER_NAME_EN: COMPUTER_NAME_EN, COMPUTER_LEVEL_TH: COMPUTER_LEVEL_TH, COMPUTER_LEVEL_EN: COMPUTER_LEVEL_EN)
                            
                            return skillComputer
                        })
                        completion(skillComputerArray,nil)
                    }else{
                        completion(nil,GLOBAL_NOT_FOUND)
                    }
                }else{
                    completion(nil,ALERT_CONNECTIONERROR)
                }
            case .failure(let error):
                completion(nil,error.localizedDescription)
            }
        }
    }
    
    func getAllComputerGroup(completion:@escaping ([ComputerGroupModel]?,String?) -> Void){
        Alamofire.request(AlamofireRouter.getAllComputerGroup(idLanguage: "38")).responseJSON { (response) in
            switch response.result{
            case .success:
                let re = response.result.value as! NSDictionary
                if re.object(forKey: "success") as! Int == 1 {
                    if let data = re.object(forKey: "data") as? [[String:Any]] {
                        let computerGroupArray = data.map({ (computerGroupDict) -> ComputerGroupModel in
                            let ID_GROUP = computerGroupDict["ID_GROUP"] as? String ?? ""
                            let GROUP_NAME = computerGroupDict["GROUP_NAME"] as? String ?? ""
                            let ID_LANGUAGE = computerGroupDict["ID_LANGUAGE"] as? String ?? ""
                            let computerGroup = ComputerGroupModel(ID_GROUP: ID_GROUP, GROUP_NAME: GROUP_NAME, ID_LANGUAGE: ID_LANGUAGE)
                            
                            return computerGroup
                        })
                        
                        completion(computerGroupArray,nil)
                    }else{
                        completion(nil,GLOBAL_NOT_FOUND)
                    }
                }else{
                    completion(nil,ALERT_CONNECTIONERROR)
                }
            case .failure(let error):
                completion(nil,error.localizedDescription)
            }
        }
    }
}
