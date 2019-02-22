//
//  SwipingController.swift
//  autolayout
//
//  Created by Mikaela Caron on 2/22/19.
//  Copyright © 2019 Mikaela Caron. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView.isPagingEnabled = true
        
    }//end viewDidLoad()
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        //DON'T DO THIS!! bad idea! Keeps reloading images
        /*
         let imageView = UIImageView()
        cell.addSubview(imageView)
         */
        
        //cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        /* this is the long version of the above statement
        if(indexPath.item % 2 == 0) {
            cell.backgroundColor = .red
        } else {
            cell.backgroundColor = .green
        }*/
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.height )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 0
    }
    
    
}
