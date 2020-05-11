//
//  HomeServiceController.swift
//  ZapakService
//
//  Created by shashivendra on 04/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class HomeServiceController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
     @IBOutlet weak var collectionView: AutoScrollingCollectionView!
    @IBOutlet weak var myTableView: UITableView!
     var images = ["1cctv","2r","12_1","14"]
    
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Zapak Home Sevice"
        self.collectionView.register(UINib(nibName: "BannerImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerImageCollectionViewCell")
        collectionView.alwaysBounceHorizontal = true
        collectionView.startScrolling()
        
        UserDefaults.standard.set("1", forKey: "ISLOGIN") //setObject
               UserDefaults.standard.synchronize()
        self.myTableView.sectionHeaderHeight = 50
        
        //AutoMetic imageSlider code
//
//
//        let geeser =  UITapGestureRecognizer()
//        geeser.addTarget(self, action: #selector(OnClick))
//        GysrView.addGestureRecognizer(geeser)
//        GysrView.isUserInteractionEnabled  = true
//        GysrView.layer.shadowColor = UIColor.gray.cgColor
//        GysrView.layer.shadowOpacity = 10
//
//
//        let washing = UITapGestureRecognizer()
//        washing.addTarget(self, action: #selector(ONWash))
//        WashMView.addGestureRecognizer(washing)
//        WashMView.isUserInteractionEnabled = true
//        WashMView.layer.shadowColor = UIColor.gray.cgColor
//        WashMView.layer.shadowOpacity = 10
//
//        let refrigator = UITapGestureRecognizer()
//        refrigator.addTarget(self, action: #selector(OnCool))
//       RefriView.addGestureRecognizer(refrigator)
//        RefriView.isUserInteractionEnabled = true
//        RefriView.layer.shadowOpacity = 10
//        RefriView.layer.shadowColor = UIColor.gray.cgColor
//
//        let tapgues = UITapGestureRecognizer()
//        tapgues.addTarget(self, action: #selector(OnWater))
//        RoView.addGestureRecognizer(tapgues)
//        RoView.isUserInteractionEnabled = true
//        RoView.layer.shadowOpacity = 10
//        RoView.layer.shadowColor = UIColor.gray.cgColor
//
//
//        let camera = UITapGestureRecognizer()
//        camera.addTarget(self, action: #selector(OnCamera))
//        CCtvView.addGestureRecognizer(camera)
//        CCtvView.isUserInteractionEnabled = true
//        CCtvView.layer.shadowOpacity = 10
//        CCtvView.layer.shadowColor = UIColor.gray.cgColor
//
//        let tap = UITapGestureRecognizer()
//        tap.addTarget(self, action: #selector(OnAclick))
//        AcView.isUserInteractionEnabled = true
//        AcView.addGestureRecognizer(tap)
//        AcView.layer.shadowOpacity = 10
//        AcView.layer.shadowColor = UIColor.gray.cgColor
//
        // Do any additional setup after loading the view.
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
               return images.count
           }
           
           func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
               
               return CGSize(width: UIScreen.main.bounds.width, height: 180)
               
           }
           
           func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               let cell : BannerImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerImageCollectionViewCell", for: indexPath) as! BannerImageCollectionViewCell

              
               let imgBanner = self.images[indexPath.row]
          
               cell.bannerImage.image = UIImage.init(named: "\(imgBanner)")
               cell.backgroundColor = .red
               
              
               return cell
           }
           func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
               
           }
    
    

    @ objc func OnAclick(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AcRepairViewController")as!
        AcRepairViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func ONWash(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WashingMachineServiceController")as!
        WashingMachineServiceController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @ objc func OnCool(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RefrigatorRepairController")as!
        RefrigatorRepairController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnClick(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GyserService_RepairVController")as!
        GyserService_RepairVController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnWater(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RoServiceViewController")as!
        RoServiceViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @ objc func OnCamera(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CCtvRepaServController")as!
        CCtvRepaServController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
            return 1
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 48))
        let label = UILabel(frame: CGRect(x: 5, y: 4, width: tableView.frame.size.width, height: 40))
        label.text = "Our Services"
        label.font = UIFont(name: "Futura", size: 16.0)!
        label.textColor = UIColor.black
        self.view.addSubview(view)
        view.backgroundColor = .clear
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
            return 50
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
       
        var cell: CategoryTableViewCell! = myTableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as? CategoryTableViewCell
        if cell == nil {
            myTableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryTableViewCell")
            cell = myTableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as? CategoryTableViewCell
        }
        cell.configureCell()
        
        return cell
       
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.size.height
        
    }
   
}
