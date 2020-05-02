//
//  BookingDetailViewController.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class BookingDetailViewController: UIViewController {

    @IBOutlet weak var txtEntercoupn: UITextField!
    @IBOutlet weak var Thirdview: UIView!
    @IBOutlet weak var SecView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Booking Details"
        SecView.layer.shadowOpacity = 10
        SecView.layer.shadowColor = UIColor.gray.cgColor
        
        Thirdview.layer.shadowOpacity = 10
        Thirdview.layer.shadowColor = UIColor.gray.cgColor

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnApply(_ sender: UIButton) {
    }
    

}
