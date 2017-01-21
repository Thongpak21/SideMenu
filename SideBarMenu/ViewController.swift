//
//  ViewController.swift
//  SideBarMenu
//
//  Created by Thongpak on 1/20/2560 BE.
//  Copyright © 2560 Thongpak. All rights reserved.
//

import UIKit
import SWRevealViewController
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if (self.revealViewController() != nil) {
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.navigationItem.leftBarButtonItem?.target = revealViewController()
            self.navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
        }

    }
}

