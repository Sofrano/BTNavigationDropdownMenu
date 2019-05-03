//
//  ViewController.swift
//  BTNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/8/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedCellLabel: UILabel!
    var menuView: BTNavigationDropdownMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = [BTItem("Facebook", defaultImage: #imageLiteral(resourceName: "facebookD"), selectedImage: #imageLiteral(resourceName: "facebookS")),
                     BTItem("Instagram", defaultImage: #imageLiteral(resourceName: "instagramD"), selectedImage: #imageLiteral(resourceName: "linkedinS")),
                     BTItem("Youtube", defaultImage: #imageLiteral(resourceName: "youtubeD"), selectedImage: #imageLiteral(resourceName: "youtubeS")),
                     BTItem("LinkedIn", defaultImage: #imageLiteral(resourceName: "linkedinD"), selectedImage: #imageLiteral(resourceName: "linkedinS")),
                     BTItem("Google+", defaultImage: #imageLiteral(resourceName: "googleD"), selectedImage: #imageLiteral(resourceName: "googleS")),]
        self.selectedCellLabel.text = items.first?.title
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // "Old" version
        // menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Dropdown Menu", items: items)
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController,
                                            containerView: self.navigationController!.view,
                                            title: "Title",
                                            subtitle: items.first?.title,
                                            items: items)
        
        // Another way to initialize:
        // menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: BTTitle.title("Dropdown Menu"), items: items)
        menuView.subtitleMode = true
        menuView.shouldKeepSelectedCellColor = true
        
        menuView.cellHeight = 50
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        menuView.cellTextLabelColor = UIColor.white
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.cellTextLabelAlignment = .left // .Center // .Right // .Left
        
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.black
        menuView.maskBackgroundOpacity = 0.3
        
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> Void in
            print("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath].title
        }
        
        self.navigationItem.titleView = menuView
    }
}
