//
//  GyserService&RepairVController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class GyserService_RepairVController: UIViewController {

    @IBOutlet weak var InstallView: UIView!
    @IBOutlet weak var RepairView: UIView!
    @IBOutlet weak var ServiceView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Geyser Service & Repair"

        
        let install = UITapGestureRecognizer()
        install.addTarget(self, action: #selector(OnInstall))
        InstallView.addGestureRecognizer(install)
        InstallView.isUserInteractionEnabled = true
        InstallView.layer.shadowColor = UIColor.gray.cgColor
        InstallView.layer.shadowOpacity = 10
        
        let repair = UITapGestureRecognizer()
        repair.addTarget(self, action: #selector(OnRepair))
        RepairView.addGestureRecognizer(repair)
        RepairView.isUserInteractionEnabled = true
        RepairView.layer.shadowColor = UIColor.gray.cgColor
        RepairView.layer.shadowOpacity = 10
        
        
        
        let serve = UITapGestureRecognizer()
        serve.addTarget(self, action: #selector(OnService))
        ServiceView.addGestureRecognizer(serve)
        ServiceView.isUserInteractionEnabled = true
        ServiceView.layer.shadowColor = UIColor.gray.cgColor
        ServiceView.layer.shadowOpacity = 10
        
        
        // Do any additional setup after loading the view.
    }
    @ objc func OnInstall(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GyserInstallViewController")as!
        GyserInstallViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnService(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GyserServiceController")as!
        GyserServiceController
       self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnRepair(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GyserRepairController")as!
        GyserRepairController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    

}
