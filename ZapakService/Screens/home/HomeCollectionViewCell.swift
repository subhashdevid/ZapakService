//
//  HomeCollectionViewCell.swift
//  ZapakService
//
//  Created by shashivendra on 06/03/20.
//  Copyright © 2020 Masthead. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionView: AutoScrollingCollectionView!
    
    
    
   var images = ["1cctv","2r","12_1","14"]
      override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            
        // self.collectionView.register(UINib(nibName: "BannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell")

        }

       
        
        func configureCell() {
         
            collectionView.reloadData()
            collectionView.alwaysBounceHorizontal = true
            collectionView.startScrolling()
        }
        
    }
     


    extension HomeCollectionViewCell : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return images.count
        }
        
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: UIScreen.main.bounds.width, height: 180)
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell : BannerCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell

           
            let imgBanner = self.images[indexPath.row]
       
            cell.bannerImage.image = UIImage.init(named: "\(imgBanner)")
            cell.backgroundColor = .red
            
           
            return cell
        }
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }
        
        
        

       
        
    }


