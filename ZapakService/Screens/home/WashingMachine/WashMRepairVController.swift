//
//  WashMRepairVController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class WashMRepairVController: UIViewController {

    @IBOutlet weak var AutoView: UIView!
    @IBOutlet weak var SemiAutoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Washing Machine Repair"
        
        let tapgues  = UITapGestureRecognizer()
        tapgues.addTarget(self, action: #selector(Onclick))
        AutoView.isUserInteractionEnabled = true
        AutoView.addGestureRecognizer(tapgues)
        AutoView.layer.shadowOpacity = 10
        AutoView.layer.shadowColor = UIColor.gray.cgColor
        
        let semiauto  = UITapGestureRecognizer()
        semiauto.addTarget(self, action: #selector(OnSubmit))
        SemiAutoView.isUserInteractionEnabled = true
        SemiAutoView.addGestureRecognizer(semiauto)
        SemiAutoView.layer.shadowOpacity = 10
        SemiAutoView.layer.shadowColor = UIColor.gray.cgColor

        // Do any additional setup after loading the view.
    }
    

    
    @ objc func Onclick(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @ objc func OnSubmit(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
