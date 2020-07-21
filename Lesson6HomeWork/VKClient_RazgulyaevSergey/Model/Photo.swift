//
//  Photo.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 09.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

struct PhotosData {
    let photoNumber: Int
    let photoDate: String
    let photoCard: UIImage?
    init(photoNumber: Int, photoDate: String, photoCard: UIImage?) {
        self.photoNumber = photoNumber
        self.photoDate = photoDate
        self.photoCard = photoCard
    }
}

var photos = [
    PhotosData(photoNumber: 7, photoDate: "05.08.2019", photoCard: UIImage(named: "ph001")),
    PhotosData(photoNumber: 6, photoDate: "30.07.2019", photoCard: UIImage(named: "ph002")),
    PhotosData(photoNumber: 5, photoDate: "21.06.2019", photoCard: UIImage(named: "ph003")),
    PhotosData(photoNumber: 4, photoDate: "12.05.2019", photoCard: UIImage(named: "ph004")),
    PhotosData(photoNumber: 3, photoDate: "08.04.2019", photoCard: UIImage(named: "ph005")),
    PhotosData(photoNumber: 2, photoDate: "04.03.2019", photoCard: UIImage(named: "ph006")),
    PhotosData(photoNumber: 1, photoDate: "01.02.2019", photoCard: UIImage(named: "ph007"))
]
