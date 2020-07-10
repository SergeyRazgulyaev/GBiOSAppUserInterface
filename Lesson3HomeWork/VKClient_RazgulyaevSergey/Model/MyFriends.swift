//
//  MyFriends.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 10.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

struct MyFriends {
    let friendName: String
    var friendAvatar: UIImage?
    init(friendName: String, friendAvatar: UIImage?) {
        self.friendName = friendName
        self.friendAvatar = friendAvatar
    }
}

var myFriends: [MyFriends] = [
    MyFriends(friendName: "Alexey Smirnov", friendAvatar: UIImage(named: "001")),
    MyFriends(friendName: "Vladislav Popov", friendAvatar: UIImage(named: "002")),
    MyFriends(friendName: "Georgiy Filippov", friendAvatar: UIImage(named: "003")),
    MyFriends(friendName: "Denis Korovin", friendAvatar: UIImage(named: "004")),
    MyFriends(friendName: "Eugeny Averin", friendAvatar: UIImage(named: "005")),
    MyFriends(friendName: "Kirill Zavarzin", friendAvatar: UIImage(named: "006")),
    MyFriends(friendName: "Leonid Makarov", friendAvatar: UIImage(named: "007"))
]
