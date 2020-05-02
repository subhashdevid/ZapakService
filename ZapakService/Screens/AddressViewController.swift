//
//  AddressViewController.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.delegate = self
        txtAddress.delegate = self
        txtLocation.delegate = self
        self.navigationItem.title = "Address Details"

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

   
    @IBAction func btnConfirm(_ sender: UIButton) {
        print("Hello")
    }
    
}
