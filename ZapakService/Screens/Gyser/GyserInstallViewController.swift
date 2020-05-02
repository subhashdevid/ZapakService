//
//  GyserInstallViewController.swift
//  ZapakService
//
//  Created by shashivendra on 16/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class GyserInstallViewController: UIViewController {
    @IBOutlet weak var btnAdd1: UIButton!
    
    @IBOutlet weak var btnMinus2: UIButton!
    @IBOutlet weak var btnMinus1: UIButton!
    @IBOutlet weak var btnAdd2: UIButton!
    @IBOutlet weak var img2View: UIView!
    @IBOutlet weak var img1View: UIView!
    @IBOutlet weak var secView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Installation/Uninstallation"
        
        btnAdd1.layer.cornerRadius = 20
        btnAdd1.clipsToBounds = true
        
        btnMinus2.layer.cornerRadius = 20
        btnMinus2.clipsToBounds = true
        
        btnMinus1.layer.cornerRadius = 20
        btnMinus1.clipsToBounds = true
        
        btnAdd2.layer.cornerRadius = 20
        btnAdd2.clipsToBounds = true
        
        
        img1View.layer.shadowColor = UIColor.gray.cgColor
        img1View.layer.shadowOpacity = 10
        
        img2View.layer.shadowColor = UIColor.gray.cgColor
        img2View.layer.shadowOpacity = 10
        
        secView.layer.shadowColor = UIColor.gray.cgColor
        secView.layer.shadowOpacity = 10
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func btnMinus1(_ sender: UIButton) {
    }
    
    @IBAction func btnMinus2(_ sender: UIButton) {
    }
    @IBAction func btnAdd1(_ sender: UIButton) {
    }
    
    @IBAction func btnAdd2(_ sender: UIButton) {
    }
}
