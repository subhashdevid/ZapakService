//
//  AcRepairViewController.swift
//  ZapakService
//
//  Created by shashivendra on 04/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class AcRepairViewController: UIViewController {

    @IBOutlet weak var btncoun: UIButton!
    @IBOutlet weak var AcServiceView: UIView!
    @IBOutlet weak var AcInstallView: UIView!
    @IBOutlet weak var AcRentView: UIView!
    @IBOutlet weak var AcRepView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Ac Service & Repair"
        
        AcRepView.layer.shadowColor = UIColor.gray.cgColor
        AcRepView.layer.shadowOpacity = 10
        
        AcServiceView.layer.shadowColor = UIColor.gray.cgColor
        AcServiceView.layer.shadowOpacity = 10
        
        AcRentView.layer.shadowColor = UIColor.gray.cgColor
        AcRentView.layer.shadowOpacity = 10
        
        AcInstallView.layer.shadowColor = UIColor.gray.cgColor
        AcInstallView.layer.shadowOpacity = 10
        
        btncoun.layer.cornerRadius = 20
        btncoun.layer.opacity  = 10
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func bnCounti(_ sender: UIButton) {
        
    }
    
}
