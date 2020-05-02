//
//  WashingMachineServiceController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class WashingMachineServiceController: UIViewController {
  
    @IBOutlet weak var ServiView: UIView!
    
    @IBOutlet weak var RepairView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "WashingMachine Service & Repair"
        
  
        
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(OnService))
        ServiView.addGestureRecognizer(tap)
        ServiView.isUserInteractionEnabled = true
        ServiView.layer.shadowColor = UIColor.gray.cgColor
        ServiView.layer.shadowOpacity = 10
        
        
        let tapguester = UITapGestureRecognizer()
        tapguester.addTarget(self, action: #selector(OnRepair))
        RepairView.addGestureRecognizer(tapguester)
        RepairView.isUserInteractionEnabled = true
        RepairView.layer.shadowColor = UIColor.gray.cgColor
        RepairView.layer.shadowOpacity = 10
        
        // Do any additional setup after loading the view.
    }
    
    @ objc func OnService(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WashMServiceVController")
        as! WashMServiceVController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @ objc func OnRepair(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WashMRepairVController")
            as! WashMRepairVController
       self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
   
    
  
}
