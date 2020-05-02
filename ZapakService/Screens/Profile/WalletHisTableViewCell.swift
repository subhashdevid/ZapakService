//
//  WalletHisTableViewCell.swift
//  ZapakService
//
//  Created by shashivendra on 17/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class WalletHisTableViewCell: UITableViewCell {

    @IBOutlet weak var secview: UIView!
    
    @IBOutlet weak var lblBooknum: UILabel!
    @IBOutlet weak var lblCard: UILabel!
    @IBOutlet weak var lblCoast: UILabel!
    @IBOutlet weak var lblWalletrec: UILabel!
    @IBOutlet weak var lblBookid: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        secview.layer.shadowColor = UIColor.gray.cgColor
        secview.layer.shadowOpacity  = 10
        
       
        // Initialization code
    }
}
