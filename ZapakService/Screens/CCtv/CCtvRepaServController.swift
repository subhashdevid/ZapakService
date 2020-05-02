//
//  CCtvRepaServController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class CCtvRepaServController: UIViewController {

    @IBOutlet weak var RepairView: UIView!
    @IBOutlet weak var InstallView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Cctv Service & Repair"
        
        RepairView.layer.shadowColor = UIColor.gray.cgColor
        RepairView.layer.shadowOpacity = 10
        
        InstallView.layer.shadowColor = UIColor.gray.cgColor
        InstallView.layer.shadowOpacity = 10

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnConfm(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
