//
//  ViewControllerExtension.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(_ title:String?, message: String?, view: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        view.present(alert , animated: true, completion: nil)
    }
}
