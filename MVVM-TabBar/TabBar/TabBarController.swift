//
//  TabBarController.swift
//  MVVM-TabBar
//
//  Created by Yefga on 21/03/20.
//  Copyright © 2020 Yefga. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    fileprivate var viewModel = TabBarViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    fileprivate func setup() {
        self.delegate = self

        self.viewControllers = viewModel.controllers
        
        self.tabBar.barTintColor = .white
    }
        
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }

}
