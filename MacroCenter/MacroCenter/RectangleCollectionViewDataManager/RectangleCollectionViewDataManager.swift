//
//  RectangleCollectionViewDataManager.swift
//  MacroCenter
//
//  Created by zehra on 20.08.2023.
//

import UIKit

class RectangleCollectionViewDataManager: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var rectangleList = [Rectangle]()
    
    func setDataManager(list: [Rectangle]) {
        rectangleList = list
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rectangleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let rectangle = rectangleList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rectangleCell", for: indexPath) as! RectangleCollectionViewCell
        
        guard let imageName = rectangle.image else {
                  return RectangleCollectionViewCell()
              }
        
        cell.rectangleImageView.image = UIImage(named: imageName)
        
        return cell
    
    }
}
