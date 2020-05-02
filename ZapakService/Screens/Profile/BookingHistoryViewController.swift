//
//  BookingHistoryViewController.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class BookingHistoryViewController: UIViewController {
var bookid = ["booking Id"]
    var bookOn = ["Booked On"]
    var booknum = ["37373736"]
    var services = [" 1service"]
    var bookday = ["18 May,2019"]
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationItem.title = "Booking History"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnView(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BookingDetailViewController")as! BookingDetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}
extension BookingHistoryViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookday.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell")as! BokinhistTableViewCell
        cell.lblboknum.text = booknum[indexPath.row]
        cell.lblboktime.text = bookday[indexPath.row]
        cell.lblBookid.text = bookid[indexPath.row]
        cell.lblbookOn.text = bookOn[indexPath.row]
        cell.lblServices.text = services[indexPath.row]
        return cell
    }
    
    
}
