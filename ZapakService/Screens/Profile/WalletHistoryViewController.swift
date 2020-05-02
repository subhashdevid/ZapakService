//
//  WalletHistoryViewController.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class WalletHistoryViewController: UIViewController {

    var recharge = ["Sucess"]
    var bookid = ["Booking id"]
    var coast = ["rs 2500"]
    var Card = ["Credit"]
    var booknum = ["28282828"]
    
    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Zapak Home Service"

        // Do any additional setup after loading the view.
    }
    

}
extension WalletHistoryViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return booknum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell")as! WalletHisTableViewCell
        cell.lblBookid.text = bookid[indexPath.row]
        cell.lblWalletrec.text = recharge[indexPath.row]
        cell.lblBooknum.text = booknum[indexPath.row]
        cell.lblCard.text = Card[indexPath.row]
        cell.lblCoast.text = coast[indexPath.row]
        
//        cell.lblBookid.text = bok[indexPath.row]
       
        return cell
    }
    
    
}

    

