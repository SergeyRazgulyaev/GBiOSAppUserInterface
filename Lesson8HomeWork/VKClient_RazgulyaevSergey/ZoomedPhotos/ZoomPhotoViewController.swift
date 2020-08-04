//
//  ZoomPhotoViewController.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 27.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class ZoomPhotoViewController: UIViewController {
    @IBOutlet weak var zoomedFriendsPhoto: UIImageView!
    @IBOutlet weak var zoomedNextFriendPhoto: UIImageView!
    
    private var forZoomPhotos = [PhotosData]()
    var friendZoomPhotoName: String?
    var friendZoomPhotoCard: UIImage?
    var friendZoomPhotoNumber: Int?
    var zoomPhotoIndex: Int?
    
    var shownImage: UIImage? = UIImage(systemName: "tortoise")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomPhotoFilter()
        zoomPhotoIndex = forZoomPhotos.count - friendZoomPhotoNumber!
        showZoomPhotos()
        zoomedFriendsPhoto.isUserInteractionEnabled = true
        zoomedNextFriendPhoto.isUserInteractionEnabled = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture(_:)))
        swipeRight.direction = .right
        zoomedFriendsPhoto.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture(_:)))
        swipeLeft.direction = .left
        zoomedFriendsPhoto.addGestureRecognizer(swipeLeft)
        
    }
    
    @objc func swipeGesture(_ sender: UISwipeGestureRecognizer?) {
        if let swipeGesture = sender {
            switch swipeGesture.direction {
            case .right:
                if shownImage == UIImage(systemName: "tortoise") || shownImage == zoomedFriendsPhoto.image {
                    print("No right swipe")
                } else {
                shownImage = zoomedFriendsPhoto.image
                print("Swipe right")
                photosReverseAnimation()
                }
            case .left:
                if shownImage == zoomedNextFriendPhoto.image {
                    print("No left swipe")
                } else {
                shownImage = zoomedNextFriendPhoto.image
                print("Swipe left")
                photosAnimation()
                }
            default:
                break
            }
        }
    }
    
    func photosAnimation() {
        
        let animationTransformScale = CASpringAnimation(keyPath: "transform.scale")
        animationTransformScale.duration = 1
        animationTransformScale.fromValue = 1
        animationTransformScale.toValue = 0.9
        animationTransformScale.stiffness = 100
        animationTransformScale.mass = 0.3
        animationTransformScale.fillMode = CAMediaTimingFillMode.both
        animationTransformScale.isRemovedOnCompletion = false
        zoomedFriendsPhoto.layer.add(animationTransformScale, forKey: nil)
        
        let animationTransform = CABasicAnimation(keyPath: "position.x")
        animationTransform.duration = 1
        animationTransform.fromValue = 621
        animationTransform.toValue = zoomedNextFriendPhoto.frame
        animationTransform.fillMode = CAMediaTimingFillMode.both
        animationTransform.isRemovedOnCompletion = false
        zoomedNextFriendPhoto.layer.add(animationTransform, forKey: nil)
        
    }
    
    func photosReverseAnimation() {
        
        let animationTransformScale = CASpringAnimation(keyPath: "transform.scale")
        animationTransformScale.duration = 1
        animationTransformScale.fromValue = 0.9
        animationTransformScale.toValue = 1
        animationTransformScale.stiffness = 100
        animationTransformScale.mass = 0.3
        animationTransformScale.fillMode = CAMediaTimingFillMode.both
        animationTransformScale.isRemovedOnCompletion = false
        zoomedFriendsPhoto.layer.add(animationTransformScale, forKey: nil)
        
        let animationTransform = CABasicAnimation(keyPath: "position.x")
        animationTransform.duration = 1
        animationTransform.fromValue = 207
        animationTransform.toValue = 621
        animationTransform.fillMode = CAMediaTimingFillMode.both
        animationTransform.isRemovedOnCompletion = false
        zoomedNextFriendPhoto.layer.add(animationTransform, forKey: nil)
    }
    
    func zoomPhotoFilter() {
        for i in photos {
            if i.photoHolder == friendZoomPhotoName {
                forZoomPhotos.append(i)
            }
        }
    }
    func showZoomPhotos() {
        if zoomPhotoIndex! < (forZoomPhotos.count - 1) && zoomPhotoIndex! >= 0 {
            zoomedFriendsPhoto.image = forZoomPhotos[zoomPhotoIndex!].photoCard
            zoomedNextFriendPhoto.image = forZoomPhotos[zoomPhotoIndex! + 1].photoCard
        }
        if zoomPhotoIndex! == (forZoomPhotos.count - 1) {
            zoomedFriendsPhoto.image = forZoomPhotos[zoomPhotoIndex!].photoCard
            zoomedNextFriendPhoto.image = forZoomPhotos[0].photoCard
        }
        else {return}
    }
}
