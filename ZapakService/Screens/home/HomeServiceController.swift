//
//  HomeServiceController.swift
//  ZapakService
//
//  Created by shashivendra on 04/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class HomeServiceController: UIViewController {

    
    @IBOutlet weak var page: UIPageControl!
    @IBOutlet weak var myCollections: UICollectionView!
     var images = ["1cctv","2r","12_1","14"]
    
    var timer  = Timer()
    var counter = 0
    
    
    @IBOutlet weak var RoView: UIView!
    @IBOutlet weak var CCtvView: UIView!
    @IBOutlet weak var GysrView: UIView!
    @IBOutlet weak var RefriView: UIView!
    @IBOutlet weak var WashMView: UIView!
    @IBOutlet weak var AcView: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Zapak Home Sevice"
        
        UserDefaults.standard.set("1", forKey: "ISLOGIN") //setObject
               UserDefaults.standard.synchronize()
        
        
        //AutoMetic imageSlider code
        page.numberOfPages = images.count
        page.currentPage = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ChangeImage), userInfo: nil, repeats: true)
        
        
        
        
        let geeser =  UITapGestureRecognizer()
        geeser.addTarget(self, action: #selector(OnClick))
        GysrView.addGestureRecognizer(geeser)
        GysrView.isUserInteractionEnabled  = true
        GysrView.layer.shadowColor = UIColor.gray.cgColor
        GysrView.layer.shadowOpacity = 10
        
        
        let washing = UITapGestureRecognizer()
        washing.addTarget(self, action: #selector(ONWash))
        WashMView.addGestureRecognizer(washing)
        WashMView.isUserInteractionEnabled = true
        WashMView.layer.shadowColor = UIColor.gray.cgColor
        WashMView.layer.shadowOpacity = 10
        
        let refrigator = UITapGestureRecognizer()
        refrigator.addTarget(self, action: #selector(OnCool))
       RefriView.addGestureRecognizer(refrigator)
        RefriView.isUserInteractionEnabled = true
        RefriView.layer.shadowOpacity = 10
        RefriView.layer.shadowColor = UIColor.gray.cgColor
        
        let tapgues = UITapGestureRecognizer()
        tapgues.addTarget(self, action: #selector(OnWater))
        RoView.addGestureRecognizer(tapgues)
        RoView.isUserInteractionEnabled = true
        RoView.layer.shadowOpacity = 10
        RoView.layer.shadowColor = UIColor.gray.cgColor
        
        
        let camera = UITapGestureRecognizer()
        camera.addTarget(self, action: #selector(OnCamera))
        CCtvView.addGestureRecognizer(camera)
        CCtvView.isUserInteractionEnabled = true
        CCtvView.layer.shadowOpacity = 10
        CCtvView.layer.shadowColor = UIColor.gray.cgColor
        
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(OnAclick))
        AcView.isUserInteractionEnabled = true
        AcView.addGestureRecognizer(tap)
        AcView.layer.shadowOpacity = 10
        AcView.layer.shadowColor = UIColor.gray.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    @ objc func  ChangeImage(){
        if counter < images.count{
            let index = IndexPath.init(item: counter ,section: 0 )
            self.myCollections.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            counter += 1
            
        }
        else{
            
            counter  = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.myCollections.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            page.currentPage = counter
        }
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

   
}
extension HomeServiceController : UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
             return images.count
        }else{
            return 6
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0{
            let cell = myCollections.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
                   cell.img1.image = UIImage(named: images[indexPath.row])
                   return cell
        }else{
            
            let cell = myCollections.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
                   cell.img1.image = UIImage(named: images[indexPath.row])
                   return cell
        }
       
    }
    
    
}
