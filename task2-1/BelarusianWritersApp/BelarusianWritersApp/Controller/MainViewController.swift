//
//  MainViewController.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 19/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var writers: [Writer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        writers = PlistManager.loadWriters()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return writers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WriterCell", for: indexPath) as! WriterCollectionViewCell
        let writer = writers[indexPath.row]
        cell.writerImage.image = UIImage(named: writer.imageName)
        cell.writerLabel.text = writer.name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController(writer: writers[indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
