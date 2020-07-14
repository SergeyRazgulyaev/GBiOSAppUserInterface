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
    @IBOutlet weak var friendsAvatarCircle: FriendsAvatarCircle!
    @IBOutlet weak var avatar: Avatar!
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
