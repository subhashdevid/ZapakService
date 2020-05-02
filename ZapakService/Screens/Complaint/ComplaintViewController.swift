//
//  ComplaintViewController.swift
//  ZapakService
//
//  Created by shashivendra on 09/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class ComplaintViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtDiscrb: UITextField!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var btnSelect: UIButton!
    @IBOutlet weak var mytable: UITableView!
    var orders = ["abhay","washingMachine"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = " Complaint"
        txtTitle.delegate = self
        txtDiscrb.delegate = self
mytable.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func animate(toogle: Bool, type: UIButton) {
        
        if type == btnSelect {
            
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.mytable.isHidden = false
                }
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.mytable.isHidden = true
                }
            }
        }
    }
    
    @IBAction func SelectOrder(_ sender: UIButton) {
        if mytable.isHidden {
            animate(toogle: true, type: btnSelect)
        } else {
            animate(toogle: false, type: btnSelect)
        }
        
    }
    
   

}
extension ComplaintViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = orders[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btnSelect.setTitle("\(orders[indexPath.row])", for: .normal)
        animate(toogle: true, type: btnSelect)
    }
    
    
}
