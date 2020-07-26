//
//  Avatar.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 14.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class Avatar: UIView {
    
    let avatarImage = UIImageView()
    var image = UIImage()

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()
    }
    
    func configure() {
        avatarImage.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        avatarImage.contentMode = .scaleAspectFit
        addSubview(avatarImage)
        avatarImage.layer.cornerRadius = 25
        avatarImage.layer.masksToBounds = true
    }
    
}
