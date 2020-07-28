//
//  PhotosViewController.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 09.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var friendsName: UILabel!
    
    var name: String?
    private var byFriendNameFilteredPhotos = [PhotosData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        friendsName.text = name
        photoFilter()
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: 200, height: 230)
        }
        
    }
    
    func photoFilter() {
        for i in photos {
            if i.photoHolder == name {
                byFriendNameFilteredPhotos.append(i)
            }
        }
    }
}

extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        byFriendNameFilteredPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoCell else {fatalError()}
        cell.photoNumber.text = String("\(byFriendNameFilteredPhotos[indexPath.row].photoNumber)")
        cell.photoDate.text = byFriendNameFilteredPhotos[indexPath.row].photoDate
                cell.heartView.heartImage.image = UIImage(named: "HeartNo")
        cell.photoCard.image = byFriendNameFilteredPhotos[indexPath.row].photoCard
        return cell
    }
}

extension PhotosViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        
    }
}
