//
//  GyserServiceController.swift
//  ZapakService
//
//  Created by shashivendra on 12/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class GyserServiceController: UIViewController {

    @IBOutlet weak var btn2Plus: UIButton!
    @IBOutlet weak var btn1Plus: UIButton!
    @IBOutlet weak var btn2Minus: UIButton!
    @IBOutlet weak var btn1Minus: UIButton!
    @IBOutlet weak var img2View: UIView!
    @IBOutlet weak var img1View: UIView!
    @IBOutlet weak var secView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
           self.navigationItem.title = "Geyser Service"
        
        img1View.layer.shadowColor = UIColor.gray.cgColor
        img1View.layer.shadowOpacity = 10
        img1View.layer.cornerRadius = 20
        
        
        img2View.layer.shadowColor = UIColor.gray.cgColor
        img2View.layer.shadowOpacity = 10
        img2View.layer.cornerRadius = 20
        
        secView.layer.shadowColor = UIColor.gray.cgColor
        secView.layer.shadowOpacity = 10
        
        
        btn1Plus.layer.cornerRadius = 20
        btn1Plus.clipsToBounds = true
        
        btn2Plus.layer.cornerRadius = 20
        btn2Plus.clipsToBounds = true
        
        btn1Minus.layer.cornerRadius = 20
         btn1Minus.clipsToBounds = true
        
        btn2Minus.layer.cornerRadius = 20
        btn2Minus.clipsToBounds = true
        

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func btnNext(_ sender: UIButton) {
        
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as!
            CardDetailsController
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}
