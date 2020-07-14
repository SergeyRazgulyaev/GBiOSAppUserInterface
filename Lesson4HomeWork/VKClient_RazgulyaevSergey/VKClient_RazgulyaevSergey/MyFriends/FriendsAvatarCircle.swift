//
//  FriendsAvatarCircle.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 13.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class FriendsAvatarCircle: UIView {
    
    @IBInspectable var radius: CGFloat = 25 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    
    func configure() {
        layer.cornerRadius = 25
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize.zero
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let friendsAvatarCircle = UIGraphicsGetCurrentContext() else { return }
        friendsAvatarCircle.setFillColor(UIColor.gray.cgColor)
        friendsAvatarCircle.fillEllipse(in: CGRect(x: rect.midX - radius, y: rect.midY - radius, width: radius * 2, height: radius * 2))
        configure()
    }
}
