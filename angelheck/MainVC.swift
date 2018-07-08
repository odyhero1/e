//
//  ViewController.swift
//  angelheck
//
//  Created by Odysseas Herodotou on 07/07/2018.
//  Copyright © 2018 Odysseas Herodotou. All rights reserved.
//

import UIKit
var foodName = ["Sandwiches","Apple","Chicken With Rice","Caesar Salad","Gyros","Ham and Cheese","Loukanikopitta","Pasta","Smoothie","Salmon Sandwich","500ml Water Bottle"]
var myIndex = 0
var prices = [2.50,1,2.50,2.50,3,2.50,1.50,2.50,2,2.50,0.50]
var nutritionalDetails = ["E"]
class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return foodName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCell
        
        cell.imageView.image = UIImage(named: foodName[indexPath.row] + ".jpg")
        cell.label.text = foodName[indexPath.row]
        
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    


}

