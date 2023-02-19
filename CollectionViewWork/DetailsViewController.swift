//
//  DetailsViewController.swift
//  CollectionViewWork
//
//  Created by C02QJ4LQG8WN on 2/19/23.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
        
    var selectedSimpson : Simpson?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        countryLabel.text = selectedSimpson?.country
        imageView.image = selectedSimpson?.image
    }
    
}
