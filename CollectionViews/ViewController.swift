//
//  ViewController.swift
//  CollectionViews
//
//  Created by Luis Esteban Haro on 11/02/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
                
    @IBOutlet weak var collectionView: UICollectionView!
    
    let model = ImageModel()
    var images = [Image]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        images = model.getImages()
        print(images)
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    //MARK: Delegate Methods
    
    //Index path tells what item in collectio we are showing
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        //Get Cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
        
        //Configure it
        cell.configureCell(image: images[indexPath.row])
        
        //Return it
        return cell;
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    
}

