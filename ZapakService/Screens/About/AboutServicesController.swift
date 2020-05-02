//
//  AboutServicesController.swift
//  ZapakService
//
//  Created by shashivendra on 06/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class AboutServicesController: UIViewController {
    @IBOutlet weak var PrivacyPolicy: UILabel!
    
    @IBOutlet weak var AboutUs: UILabel!
    @IBOutlet weak var TermCondins: UILabel!
    @IBOutlet weak var SecView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Zapak Home Services"
        
        SecView.layer.shadowColor = UIColor.gray.cgColor
        SecView.layer.shadowOpacity = 10
        

       let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(OnClick))
        PrivacyPolicy.addGestureRecognizer(tap)
       PrivacyPolicy.isUserInteractionEnabled = true
        
        let term = UITapGestureRecognizer()
        term.addTarget(self, action: #selector(OnSubmit))
        TermCondins.isUserInteractionEnabled = true
        TermCondins.addGestureRecognizer(term)
//
        let about = UITapGestureRecognizer()
        about.addTarget(self, action: #selector(OnAbout))
        AboutUs.isUserInteractionEnabled = true
        AboutUs.addGestureRecognizer(about)
//

        // Do any additional setup after loading the view.
    }
    @IBAction func btnPrivacy(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PrivacyPolicyController")as! PrivacyPolicyController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnCondition(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TermConditionsController")as! TermConditionsController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnAboutus(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AboutUsViewController")as! AboutUsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnClick(){
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "PrivacyPolicyController")as! PrivacyPolicyController
        self.navigationController?.pushViewController(vc, animated: true)
    }

   @ objc func OnAbout(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AboutUsViewController")as! AboutUsViewController
       self.navigationController?.pushViewController(vc, animated: true)
    }
//
    @ objc func OnSubmit(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TermConditionsController")as! TermConditionsController
       self.navigationController?.pushViewController(vc, animated: true)
    }
}
