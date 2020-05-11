//
//  CategoryTableViewCell.swift
//  ZapakService
//
//  Created by Vibhash Kumar on 11/05/20.
//  Copyright © 2020 SHIKHA. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var categoryCollectionVw: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
         self.categoryCollectionVw.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
     
       
      
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : CategoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell

        
        
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
         let nbCol = 3

          let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
          let totalSpace = flowLayout.sectionInset.left
              + flowLayout.sectionInset.right
              + (flowLayout.minimumInteritemSpacing * CGFloat(nbCol - 1))
          let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(nbCol))
        return CGSize(width: size, height: ((Int(collectionView.frame.size.height)/2)-40))
        
    }
}
