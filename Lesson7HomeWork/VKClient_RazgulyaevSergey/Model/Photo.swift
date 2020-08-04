//
//  Photo.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 09.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

struct PhotosData {
    let photoHolder: String
    let photoNumber: Int
    let photoDate: String
    let photoCard: UIImage?
    init(photoHolder: String, photoNumber: Int, photoDate: String, photoCard: UIImage?) {
        self.photoHolder = photoHolder
        self.photoNumber = photoNumber
        self.photoDate = photoDate
        self.photoCard = photoCard
    }
}

var photos = [
    PhotosData(photoHolder: "Alexey Smirnov", photoNumber: 1, photoDate: "05.08.2019", photoCard: UIImage(named: "ph001")),
    PhotosData(photoHolder: "Arkadiy Popov", photoNumber: 1, photoDate: "30.07.2019", photoCard: UIImage(named: "ph002")),
    PhotosData(photoHolder: "Boris Filippov", photoNumber: 1, photoDate: "21.06.2019", photoCard: UIImage(named: "ph003")),
    PhotosData(photoHolder: "Bogdan Zavarzin", photoNumber: 1, photoDate: "12.05.2019", photoCard: UIImage(named: "ph004")),
    PhotosData(photoHolder: "Mikhail Korovin", photoNumber: 1, photoDate: "08.04.2019", photoCard: UIImage(named: "ph005")),
    PhotosData(photoHolder: "Vasiliy Makarov", photoNumber: 1, photoDate: "04.03.2019", photoCard: UIImage(named: "ph006")),
    PhotosData(photoHolder: "Zakhar Averin", photoNumber: 1, photoDate: "01.02.2019", photoCard: UIImage(named: "ph007"))
]
