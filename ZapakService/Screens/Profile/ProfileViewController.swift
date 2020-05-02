//
//  ProfileViewController.swift
//  ZapakService
//
//  Created by shashivendra on 09/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblBoookHis: UILabel!
    @IBOutlet weak var lblwaHistory: UILabel!
    @IBOutlet weak var LblAddMoney: UILabel!
    @IBOutlet weak var lblWallet: UILabel!
    @IBOutlet weak var lblLogout: UILabel!
    @IBOutlet weak var lblUpdate: UILabel!
    @IBOutlet weak var imglogout: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Zapak Profile"
        
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(OnAdd))
        LblAddMoney.addGestureRecognizer(tap)
        LblAddMoney.isUserInteractionEnabled = true
        
        let tapguesture = UITapGestureRecognizer()
        tapguesture.addTarget(self, action: #selector(OnWallet))
        lblwaHistory.addGestureRecognizer(tapguesture)
        lblwaHistory.isUserInteractionEnabled = true
        
        
        let Onbook = UITapGestureRecognizer()
        Onbook.addTarget(self, action: #selector(OnShow))
        lblBoookHis.addGestureRecognizer(Onbook)
        lblBoookHis.isUserInteractionEnabled = true
        
        let OnUpdate = UITapGestureRecognizer()
        OnUpdate.addTarget(self, action: #selector(OnProfile))
        lblUpdate.addGestureRecognizer(OnUpdate)
        lblUpdate.isUserInteractionEnabled = true
        
        // Do any additional setup after loading the view.
    }
    
    @ objc func OnAdd(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddMoneyViewController")as!
        AddMoneyViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnWallet(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WalletHistoryViewController")as!
        WalletHistoryViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @ objc func OnShow(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BookingHistoryViewController")as!
        BookingHistoryViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnProfile(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "UpdateProfileViewController")as!
        UpdateProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
