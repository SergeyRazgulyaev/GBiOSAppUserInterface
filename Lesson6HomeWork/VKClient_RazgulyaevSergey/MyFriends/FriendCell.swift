//
//  FriendCell.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 09.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var friendsAvatar: UIView!
    @IBOutlet weak var friendsAvatarImage: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendsAvatar.layer.cornerRadius = friendsAvatar.bounds.width / 2
        friendsAvatar.layer.shadowColor = UIColor.black.cgColor
        friendsAvatar.layer.shadowRadius = 5
        friendsAvatar.layer.shadowOpacity = 1
        friendsAvatar.layer.shadowOffset = .zero
        friendsAvatar.layer.shadowPath = UIBezierPath(ovalIn: friendsAvatar.bounds).cgPath
        
        friendsAvatarImage.layer.cornerRadius = friendsAvatarImage.bounds.width / 2
        friendsAvatarImage.clipsToBounds = true
    }
}
