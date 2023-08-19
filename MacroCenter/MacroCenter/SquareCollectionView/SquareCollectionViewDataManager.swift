//
//  RectangleCollectionViewDataManager.swift
//  MacroCenter
//
//  Created by zehra on 20.08.2023.
//

import UIKit

class SquareCollectionViewDataManager: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var squareList = [Square]()
    
    func setDataManager(list: [Square]) {
        squareList = list
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return squareList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let square = squareList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "squareCell", for: indexPath) as! SquareCollectionViewCell
        
        guard let imageName = square.image else {
                  return SquareCollectionViewCell()
              }
        
        cell.squareImageView.image = UIImage(named: imageName)
        
        return cell
    
    }
}
