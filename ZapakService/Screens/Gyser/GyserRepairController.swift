//
//  GyserRepairController.swift
//  ZapakService
//
//  Created by shashivendra on 12/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class GyserRepairController: UIViewController {

    @IBOutlet weak var btn1Plus: UIButton!
    @IBOutlet weak var btn1minus: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var img2View: UIView!
    @IBOutlet weak var img1View: UIView!
    @IBOutlet weak var SecView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Geyser Repair"
        
        SecView.layer.shadowOpacity = 10
        SecView.layer.shadowColor = UIColor.gray.cgColor
        
        img2View.layer.shadowOpacity  = 10
        img2View.layer.shadowColor = UIColor.gray.cgColor
        
        img1View.layer.shadowOpacity = 10
        img1View.layer.shadowColor = UIColor.gray.cgColor

        btnPlus.layer.cornerRadius = 20
        btnPlus.clipsToBounds = true
        
        btnMinus.layer.cornerRadius = 20
        btnMinus.clipsToBounds = true
        
        btn1Plus.layer.cornerRadius = 20
        btn1Plus.clipsToBounds = true
        
        btn1minus.layer.cornerRadius = 20
        btn1minus.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnNext(_ sender: UIButton) {
       
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as!
            CardDetailsController
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
   
}
