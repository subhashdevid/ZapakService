//
//  CaedDetailTableViewCell.swift
//  ZapakService
//
//  Created by shashivendra on 16/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class CaedDetailTableViewCell: UITableViewCell {

   
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var SecView: UIView!
    @IBOutlet weak var LblCount: UILabel!
    @IBOutlet weak var btnminus: UIButton!
   
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var Lbl2: UILabel!
    @IBOutlet weak var Lbl1: UILabel!
    @IBOutlet weak var imhImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      btnAdd.layer.cornerRadius = 20
        btnAdd.clipsToBounds = true
        
        btnminus.layer.cornerRadius = 20
        btnminus.clipsToBounds = true
        
        
        
        SecView.layer.shadowColor = UIColor.gray.cgColor
        SecView.layer.shadowOpacity = 10
        
        // Initialization code
    }


}
