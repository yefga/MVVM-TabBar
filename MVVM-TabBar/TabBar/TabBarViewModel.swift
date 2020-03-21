//
//  TabBarViewModel.swift
//  MVVM-TabBar
//
//  Created by Yefga on 21/03/20.
//  Copyright © 2020 Yefga. All rights reserved.
//

import UIKit

struct TabBarViewModel {

    var item: TabBarItem!

    lazy var controllers: [UIViewController] = {
        let viewControllers = [
            setControllers(.Home),
            setControllers(.Favorite),
            setControllers(.Log),
//            setControllers(.Contact)
        ]
        return viewControllers
    }()
    
    mutating func setControllers(_ type: TabBarItemType) -> UIViewController {
        item = TabBarItem(type: type)
        item.controller.tabBarItem = UITabBarItem(title: type.rawValue, image: .remove, selectedImage: .checkmark)
        
        item.controller.view.backgroundColor = item.mainColor
        item.controller.title = type.rawValue
        
        let rootViewController = item.controller
        let viewController = UINavigationController(rootViewController: rootViewController)
        
        return viewController
    }

}
