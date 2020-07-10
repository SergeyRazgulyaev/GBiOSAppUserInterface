//
//  MyGroups.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 10.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

struct MyGroup {
    let groupName: String
    var groupAvatar: UIImage?
    init(groupName: String, groupAvatar: UIImage?) {
        self.groupName = groupName
        self.groupAvatar = groupAvatar
    }
}

var myGroups: [MyGroup] = [
    MyGroup(groupName: "Kinopoisk.ru", groupAvatar: UIImage(named: "ph001_50x")),
    MyGroup(groupName: "Fast cars", groupAvatar: UIImage(named: "ph002_50x")),
    MyGroup(groupName: "Music for training", groupAvatar: UIImage(named: "ph003_50x")),
    MyGroup(groupName: "Ru Cartoons", groupAvatar: UIImage(named: "ph004_50x")),
    MyGroup(groupName: "iOS Dev", groupAvatar: UIImage(named: "ph005_50x")),
    MyGroup(groupName: "Moscow runners", groupAvatar: UIImage(named: "ph006_50x")),
    MyGroup(groupName: "Good food", groupAvatar: UIImage(named: "ph007_50x")),
    MyGroup(groupName:  "Humor", groupAvatar: UIImage(named: "ph001_50x")),
    MyGroup(groupName: "Lifehack", groupAvatar: UIImage(named: "ph002_50x")),
    MyGroup(groupName: "Psychology", groupAvatar: UIImage(named: "ph003_50x")),
    MyGroup(groupName: "Online encyclopedia", groupAvatar: UIImage(named: "ph004_50x")),
    MyGroup(groupName: "Science", groupAvatar: UIImage(named: "ph005_50x"))
]
