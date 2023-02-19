//
//  CollectionViewController.swift
//  CollectionViewWork
//
//  Created by C02QJ4LQG8WN on 2/19/23.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["test1", "test2", "test3", "test4", "test5", "test6"]
    
    var simpsonList = [Simpson]()
    var chosenSimpson : Simpson?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homer = Simpson(name: "Homer",  country: "USA", image: UIImage(named: "babaSimpson")!)
        let marge = Simpson(name: "Marge", country: "USA", image: UIImage(named: "anneSimpson")!)
        let bart = Simpson(name: "Bart", country: "USA", image: UIImage(named: "cocukSimpson")!)
        let lisa = Simpson(name: "Lisa", country: "USA", image: UIImage(named: "lisaSimpson")!)
        let maggie = Simpson(name: "Maggie", country: "USA", image: UIImage(named: "bebekSimpson")!)
        let family = Simpson(name: "Family", country: "USA", image: UIImage(named: "familySimpson")!)
        
        simpsonList.append(homer)
        simpsonList.append(marge)
        simpsonList.append(bart)
        simpsonList.append(lisa)
        simpsonList.append(maggie)
        simpsonList.append(family)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return simpsonList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell =  UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell{
            countryCell.configure(with: simpsonList[indexPath.row].name, with:  simpsonList[indexPath.row].country)
            cell = countryCell
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected text: \(simpsonList[indexPath.row])")
        chosenSimpson = simpsonList[indexPath.row]
        performSegue(withIdentifier: "fromVCToDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromVCToDetailsVC" {
            if let destination = segue.destination as? DetailsViewController{
                destination.selectedSimpson = chosenSimpson
            }
        }
    }

}
