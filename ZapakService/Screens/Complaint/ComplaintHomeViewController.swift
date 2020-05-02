//
//  ComplaintHomeViewController.swift
//  ZapakService
//
//  Created by shashivendra on 09/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class ComplaintHomeViewController: UIViewController {

    @IBOutlet weak var btnAdd: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Zapak Home Services"
        
        btnAdd.layer.cornerRadius = 25
        btnAdd.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AddBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ComplaintViewController")as!
        ComplaintViewController
        self.present(vc, animated: true, completion: nil)
    }
    

}
