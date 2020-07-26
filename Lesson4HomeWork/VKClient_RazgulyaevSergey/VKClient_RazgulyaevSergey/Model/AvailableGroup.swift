//
//  AvailableGroup.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 10.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

struct AvailableGroup {
    let availableGroupName: String
    var availableGroupAvatar: UIImage?
    init(availableGroupName: String, availableGroupAvatar: UIImage?) {
        self.availableGroupName = availableGroupName
        self.availableGroupAvatar = availableGroupAvatar
    }
}

var availableGroups: [AvailableGroup] = [
    AvailableGroup(availableGroupName: "Home design", availableGroupAvatar: UIImage(named: "ph006_50x")),
    AvailableGroup(availableGroupName: "Learning English", availableGroupAvatar: UIImage(named: "ph007_50x")),
    AvailableGroup(availableGroupName: "Blizzard Fans", availableGroupAvatar: UIImage(named: "ph001_50x")),
    AvailableGroup(availableGroupName: "Guinness world records", availableGroupAvatar: UIImage(named: "ph002_50x")),
    AvailableGroup(availableGroupName: "Technology news", availableGroupAvatar: UIImage(named: "ph003_50x")),
    AvailableGroup(availableGroupName: "Games", availableGroupAvatar: UIImage(named: "ph004_50x")),
    AvailableGroup(availableGroupName: "GameDev", availableGroupAvatar: UIImage(named: "ph005_50x")),
    AvailableGroup(availableGroupName: "History", availableGroupAvatar: UIImage(named: "ph006_50x"))
]
