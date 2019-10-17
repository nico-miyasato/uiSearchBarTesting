//
//  ParentViewController.swift
//  UITestingProject
//
//  Created by Nicolas Miyasato on 10/10/2019.
//  Copyright © 2019 Nicolas Miyasato. All rights reserved.
//

import UIKit


class ParentViewController: UIViewController {

    var searchBar: UISearchBar? = UISearchBar()
    var searchNavigationItem: UINavigationItem? {

        return self.navigationItem
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Comment to make the test succeed.
        self.navigationItem.title = "Breaking Title"
        self.createSearchBar()
        
        self.searchBar?.accessibilityIdentifier = "searchBar"
    }
    
    func createSearchBar() {
        
        self.navigationItem.setRightBarButton(self.searchButtonItem(), animated: true)
    }
    
    
    private func searchButtonItem() -> UIBarButtonItem {

        return UIBarButtonItem(
            barButtonSystemItem: .search,
            target: self,
            action: #selector(self.showSearchButtonWasTapped)
        )
    }
    
    @objc func showSearchButtonWasTapped() {

        self.showSearchBar()
    }

    func showSearchBar() {

        guard let searchBar = self.searchBar else {

            assert(false, "Need a search bar to display")
            return
        }

        searchBar.showsCancelButton = true
        searchBar.placeholder = "Search..."
        searchBar.tintColor = UIColor.black
        
        searchBar.alpha = 0
        searchBar.sizeToFit()

        self.searchNavigationItem?.titleView = searchBar
        self.searchNavigationItem?.setRightBarButton(nil, animated: true)

        UIView.animate(withDuration: 0.3, animations: { [weak searchBar] in

            searchBar?.alpha = 1

        }, completion: { [weak searchBar] finished in

            if finished {

                searchBar?.becomeFirstResponder()
            }
        })
    }

}
