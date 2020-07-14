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
    MyFriends(friendName: "Alexey Smirnov", friendAvatar: UIImage(named: "photoAlexeySmirnov")),
    MyFriends(friendName: "Vladislav Popov", friendAvatar: UIImage(named: "photoVladislavPopov")),
    MyFriends(friendName: "Georgiy Filippov", friendAvatar: UIImage(named: "photoGeorgiyFilippov")),
    MyFriends(friendName: "Denis Korovin", friendAvatar: UIImage(named: "photoDenisKorovin")),
    MyFriends(friendName: "Eugeny Averin", friendAvatar: UIImage(named: "photoEugenyAverin")),
    MyFriends(friendName: "Kirill Zavarzin", friendAvatar: UIImage(named: "photoKirillZavarzin")),
    MyFriends(friendName: "Leonid Makarov", friendAvatar: UIImage(named: "photoLeonidMakarov"))
]
