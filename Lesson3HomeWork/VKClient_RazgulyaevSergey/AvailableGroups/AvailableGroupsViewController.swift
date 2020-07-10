//
//  AvailableGroupsViewController.swift
//  VKClient_RazgulyaevSergey
//
//  Created by Sergey Razgulyaev on 10.07.2020.
//  Copyright © 2020 Sergey Razgulyaev. All rights reserved.
//

import UIKit

class AvailableGroupsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension AvailableGroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return availableGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AvailableGroupCell") as? AvailableGroupCell else { fatalError() }
        cell.titleLabel.text = availableGroups[indexPath.row].availableGroupName
        cell.availableGroupAvatar.image = availableGroups[indexPath.row].availableGroupAvatar
        
        print("Cell created for row: \(indexPath.row), \(availableGroups[indexPath.row])")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            availableGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }
}

extension AvailableGroupsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
