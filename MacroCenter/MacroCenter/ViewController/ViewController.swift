//
//  ViewController.swift
//  MacroCenter
//
//  Created by zehra on 13.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleCollectionView: UICollectionView!
    @IBOutlet weak var rectangleCollectionView: UICollectionView!
    @IBOutlet weak var squareCollectionView: UICollectionView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var bellImage: UIImageView!
    
    @IBOutlet weak var migrosImage: UIImageView!
    let circleDataManager = CircleCollectionViewDataManager()
    let rectangleDataManager = RectangleCollectionViewDataManager()
    let squareDataManager = SquareCollectionViewDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCircleDataManager()
        setRectangleDataManager()
        setSquareDataManager()
        thirdView.layer.cornerRadius = 10
        bellImage.layer.cornerRadius = 10
        migrosImage.layer.cornerRadius = 30
        migrosImage.layer.shadowOpacity = 0.5
    }
    
    func setCircleDataManager() {
        let c1 = Circle(id: 1, label: "Kampanyalar", image: "kampanya")
        let c2 = Circle(id: 2, label: "Homemade Lezzetler", image: "homemade")
        let c3 = Circle(id: 3, label: "Soğuk İçiniz", image: "icecek")
        let c4 = Circle(id: 4, label: "Barbekü İhtiyaçları", image: "barbeku")
        let c5 = Circle(id: 5, label: "Beyaz Etler ve Soslar", image: "tavuk")
        let c6 = Circle(id: 6, label: "Biliyor Musunuz?", image: "gorus")
        
        var circleList = [Circle]()
        circleList.append(c1)
        circleList.append(c2)
        circleList.append(c3)
        circleList.append(c4)
        circleList.append(c5)
        circleList.append(c6)
        
        circleDataManager.setDataManager(list: circleList)
        circleCollectionView.delegate = circleDataManager
        circleCollectionView.dataSource = circleDataManager
    }
    
    func setRectangleDataManager() {
        let c1 = Rectangle(id: 1, image: "teslimat")
        let c2 = Rectangle(id: 2, image: "ilksiparis")
        let c3 = Rectangle(id: 3, image: "beyazetbuyuk")
        let c4 = Rectangle(id: 4, image: "kirmizietbuyuk")
        let c5 = Rectangle(id: 5, image: "kisiselbakim")
        
        var rectangleList = [Rectangle]()
        rectangleList.append(c1)
        rectangleList.append(c2)
        rectangleList.append(c3)
        rectangleList.append(c4)
        rectangleList.append(c5)
        
        rectangleDataManager.setDataManager(list: rectangleList)
        rectangleCollectionView.delegate = rectangleDataManager
        rectangleCollectionView.dataSource = rectangleDataManager
    }
    
    func setSquareDataManager() {
        let c1 = Square(id: 1, image: "homemadeorta")
        let c2 = Square(id: 2, image: "meyvesebze")
        let c3 = Square(id: 3, image: "yaz")
        let c4 = Square(id: 4, image: "meyvesalatasiorta")
        let c5 = Square(id: 5, image: "evcilhayvan")
        let c6 = Square(id: 6, image: "aromaterapi")
        
        var squareleList = [Square]()
        squareleList.append(c1)
        squareleList.append(c2)
        squareleList.append(c3)
        squareleList.append(c4)
        squareleList.append(c5)
        squareleList.append(c6)
        
        squareDataManager.setDataManager(list: squareleList)
        squareCollectionView.delegate = squareDataManager
        squareCollectionView.dataSource = squareDataManager
    }

}
