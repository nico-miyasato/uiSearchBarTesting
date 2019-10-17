//
//  ViewController.swift
//  UITestingProject
//
//  Created by Nicolas Miyasato on 09/10/2019.
//  Copyright © 2019 Nicolas Miyasato. All rights reserved.
//

import UIKit

class MyViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension MyViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(frame: .zero)
        cell.textLabel?.text = "Cell for Testing"
        return cell
    }
}
