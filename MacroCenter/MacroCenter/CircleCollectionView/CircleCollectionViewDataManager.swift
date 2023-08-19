//
//  RectangleCollectionViewDataManager.swift
//  MacroCenter
//
//  Created by zehra on 20.08.2023.
//

import UIKit

class CircleCollectionViewDataManager: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var circleList = [Circle]()
    
    func setDataManager(list: [Circle]) {
        circleList = list
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return circleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let circle = circleList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "circleCell", for: indexPath) as! CircleCollectionViewCell
        
        guard let imageName = circle.image else {
                  return CircleCollectionViewCell()
              }
        
        cell.circleImageView.image = UIImage(named: imageName)
        
        return cell
    
    }
}

