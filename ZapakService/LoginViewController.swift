//
//  LoginViewController.swift
//  ZapakService
//
//  Created by SUBHASH KUMAR on 02/05/20.
//  Copyright © 2020 SHIKHA. All rights reserved.
//

import UIKit
import SwiftPhoneNumberFormatter


class LoginViewController: BaseViewController {

    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnSign: UIButton!
    @IBOutlet weak var SecView: UIView!
    @IBOutlet weak var textMobile: PhoneFormattedTextField!
    

    
    var validation = Validation()
    var mobileNumber = ""
    var rawMobileNumber = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupUIElement()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpNavigationBarWithTitle(isbarHidden: true, navigationTitle: "")
    }

    func setupUIElement() {
        
        SecView.layer.shadowOpacity = 10
               SecView.layer.shadowColor = UIColor.gray.cgColor
               
               btnSign.layer.cornerRadius = 20
               btnSign.clipsToBounds = true
               
               btnSkip.layer.cornerRadius = 20
               btnSkip.clipsToBounds = true
        
        textMobile.config.defaultConfiguration = PhoneFormat(defaultPhoneFormat: "### ###-##-##")
        textMobile.prefix = nil
        self.textMobile.textDidChangeBlock = { field in
            if let text = field?.text, text != "" {
                print(text)
                self.mobileNumber = text
            } else {
                print("No text")
            }
        }
        
        
    }
    
    func validateUser()  {
        self.view.endEditing(true)
        self.rawMobileNumber = self.mobileNumber
        
        self.mobileNumber = self.mobileNumber.replacingOccurrences(of: "-", with: "")
        self.mobileNumber = self.mobileNumber.replacingOccurrences(of: " ", with: "")

        
        
        let isValidPhone = Validation.validaPhoneNumber(phoneNumber: self.mobileNumber)
        if isValidPhone {
            self.loginUser(phone: self.mobileNumber )
        }
        else{
            self.showAlert("Please enter 10 digit mobile number")
        }
    }
    
    
    func loginUser(phone : String?) {
        let param: [String: Any] = [
            "mobile": phone ?? ""
        ]
        
        Loader.showHud()
        NetworkManager.LoginUser(parameters: param) {[weak self] result in
            Loader.dismissHud()
            switch result {
            case let .success(response):
                print(response)
                let responseType = response.type ?? ""
                if responseType ==  "customer" {
                    self?.redirectToOTP()
                }
                else{
                    self?.showAlert("You are not a registered partner")
                }
            case .failure: break
            }

        }
        
        
        
        
    }
    
    
    func redirectToOTP() {
           let vc = OTPViewController.instantiate(appStoryboard: .main) as OTPViewController
           vc.mobile = self.rawMobileNumber
           self.navigationController?.pushViewController(vc, animated: true)
       }
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
//           let vc = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController")as! OTPViewController
//           self.navigationController?.pushViewController(vc, animated: true)
        
        self.view.endEditing(true)
        self.validateUser()

        
       }
      
    
    

}

