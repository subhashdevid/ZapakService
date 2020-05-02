//
//  BokinhistTableViewCell.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class BokinhistTableViewCell: UITableViewCell {

    @IBOutlet weak var lblServices: UILabel!
    @IBOutlet weak var lblboktime: UILabel!
    @IBOutlet weak var lblboknum: UILabel!
    @IBOutlet weak var lblbookOn: UILabel!
    @IBOutlet weak var lblBookid: UILabel!
    @IBOutlet weak var Secview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    

    @IBAction func btnView(_ sender: UIButton) {
    }
}
