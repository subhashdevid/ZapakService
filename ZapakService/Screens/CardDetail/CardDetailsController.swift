//
//  CardDetailsController.swift
//  ZapakService
//
//  Created by shashivendra on 14/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class CardDetailsController: UIViewController {

    var images = ["account_setting_icon"]
    var Priece = ["30"]
    var Unit = ["3"]
    var name = ["Less than 20 litre"]
    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

         self.navigationItem.title = "Card Details"
        // Do any additional setup after loading the view.
    }
  

    @IBAction func btnCountinue(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddressViewController")as!
        AddressViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
extension CardDetailsController  : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!
            CaedDetailTableViewCell
        cell.Lbl1.text = name[indexPath.row]
        cell.Lbl2.text = Priece[indexPath.row]
        cell.lbl3.text = Unit[indexPath.row]
        
        cell.imhImage.image = UIImage.init(named: images[indexPath.row])
        return cell
        
    }
    
    
}
