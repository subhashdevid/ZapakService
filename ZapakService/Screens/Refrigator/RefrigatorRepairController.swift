//
//  RefrigatorRepairController.swift
//  ZapakService
//
//  Created by shashivendra on 05/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class RefrigatorRepairController: UIViewController {

    @IBOutlet weak var NotCoolView: UIView!
    @IBOutlet weak var OtherView: UIView!
    @IBOutlet weak var NotWorkView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Refrigerator Repair"
        
        let tapguesture = UITapGestureRecognizer()
        tapguesture.addTarget(self, action: #selector(OnCool))
        NotCoolView.addGestureRecognizer(tapguesture)
        NotCoolView.isUserInteractionEnabled = true
        NotCoolView.layer.shadowColor = UIColor.gray.cgColor
        NotCoolView.layer.shadowOpacity =  10
        
        
        
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(NotWork))
        OtherView.addGestureRecognizer(tap)
        OtherView.isUserInteractionEnabled = true
        OtherView.layer.shadowOpacity = 10
        OtherView.layer.shadowColor = UIColor.gray.cgColor
        
        
        
        let tapOnclick = UITapGestureRecognizer()
        tapOnclick.addTarget(self, action: #selector(OnNotwork))
        NotWorkView.addGestureRecognizer(tapOnclick)
        NotWorkView.isUserInteractionEnabled = true
        NotWorkView.layer.shadowColor = UIColor.gray.cgColor
        NotWorkView.layer.shadowOpacity = 10

        // Do any additional setup after loading the view.
    }
    @ objc func OnCool(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as!
        CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @ objc func OnNotwork(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as!
        CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @ objc func NotWork(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CardDetailsController")as!
        CardDetailsController
        self.navigationController?.pushViewController(vc, animated: true)
    }

   
    

}
