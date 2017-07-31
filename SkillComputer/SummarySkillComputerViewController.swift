//
//  SummarySkillComputerViewController.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/30/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

//request
protocol SummarySkillComputerViewControllerOutput: class {
    func fetchGetAllSkillComputer()
    func gotoSkillComputer()
    func passDatatoNextSence(_ segue: UIStoryboardSegue)
}

protocol SummarySkillComputerViewControllerInput: class {
    func displayGetSkillComputer(_ skillComputers:[SkillComputerModel])
    func displayErrorService(_ error: String)
}

class SummarySkillComputerViewController: UIViewController, SummarySkillComputerViewControllerInput{

    @IBOutlet weak var mTableview:UITableView!
    
    var presenter: SummarySkillComputerViewControllerOutput!
    var skillComputers:[SkillComputerModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SummarySkillComputerAssembly.sharedInstance.configure(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.fetchGetAllSkillComputer()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayGetSkillComputer(_ skillComputers:[SkillComputerModel]) {
        self.skillComputers = skillComputers
        self.mTableview.reloadData()
    }
    
    func displayErrorService(_ error: String) {
        self.showAlert(nil, message: error, view: self)
    }
    
    @IBAction func onClickSkillComputer(_ sender: Any) {
        self.presenter.gotoSkillComputer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(mTableview.indexPathForSelectedRow?.row)
//        print(self.mTableview.indexPathForSelectedRow)
//        if let indexPath = self.mTableview.indexPathForSelectedRow{
//            let selectedRow = indexPath.row
//            print(indexPath)
////            let detailVC = segue.destination as! ParkDetailTableVC
////            detailVC.park = self.parksArray[selectedRow]
//        }
        
        
//        self.presenter.passDatatoNextSence(segue)
    }
}

extension SummarySkillComputerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.skillComputers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.skillComputers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: SummarySKillComputerCell.defualtReuseIdentifier) as! SummarySKillComputerCell
        cell.setContent(skillName: item.COMPUTER_NAME_EN, SkillLevel: item.COMPUTER_LEVEL_EN)
        return cell
    }
}

extension SummarySkillComputerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        print("indexPath -> \(tableView.indexPathForSelectedRow)")
        self.presenter.gotoSkillComputer()
    }
}
