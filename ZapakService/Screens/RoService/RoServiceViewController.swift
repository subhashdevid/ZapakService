//
//  RoServiceViewController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class RoServiceViewController: UIViewController {

    @IBOutlet weak var FinalView: UIView!
    @IBOutlet weak var RoseviceView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "R.O Service & Repair"
        
        
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(OnSubmit))
        FinalView.addGestureRecognizer(tap)
        FinalView.isUserInteractionEnabled = true
        FinalView.layer.shadowColor = UIColor.gray.cgColor
        FinalView.layer.shadowOpacity = 10
        
        
        let tapguesture = UITapGestureRecognizer()
        tapguesture.addTarget(self, action: #selector(OnClick))
        RoseviceView.addGestureRecognizer(tapguesture)
        RoseviceView.isUserInteractionEnabled = true
        RoseviceView.layer.shadowOpacity = 10
        RoseviceView.layer.shadowColor = UIColor.gray.cgColor

        // Do any additional setup after loading the view.
    }
    
    @ objc func OnClick(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnSubmit(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as! CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
   

}
