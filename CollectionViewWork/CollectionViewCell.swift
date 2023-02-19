//
//  CollectionViewCell.swift
//  CollectionViewWork
//
//  Created by C02QJ4LQG8WN on 2/19/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    func configure(with nameSurname: String, with countryName: String) {
        nameSurnameLabel.text = nameSurname
        countryNameLabel.text = countryName
    }
    
}
