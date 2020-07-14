//
//  PhotoCell.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 09.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photoCard: UIImageView!
    @IBOutlet weak var photoNumber: UILabel!
    @IBOutlet weak var photoDate: UILabel!
    @IBOutlet weak var heartView: HeartView!
}
