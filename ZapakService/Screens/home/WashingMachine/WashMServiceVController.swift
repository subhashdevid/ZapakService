//
//  WashMServiceVController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class WashMServiceVController: UIViewController {

    @IBOutlet weak var AutomaticView: UIView!
    @IBOutlet weak var SemiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Washing Machine Service"
        
        let tapgues  = UITapGestureRecognizer()
        tapgues.addTarget(self, action: #selector(Onclick))
        AutomaticView.isUserInteractionEnabled = true
        AutomaticView.addGestureRecognizer(tapgues)
        AutomaticView.layer.shadowOpacity = 10
        AutomaticView.layer.shadowColor = UIColor.gray.cgColor

        
        let semiauto  = UITapGestureRecognizer()
        semiauto.addTarget(self, action: #selector(OnSubmit))
        SemiView.isUserInteractionEnabled = true
        SemiView.addGestureRecognizer(semiauto)
        SemiView.layer.shadowOpacity = 10
        SemiView.layer.shadowColor = UIColor.gray.cgColor
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
