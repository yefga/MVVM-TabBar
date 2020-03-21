//
//  TabBarItem.swift
//  MVVM-TabBar
//
//  Created by Yefga on 21/03/20.
//  Copyright © 2020 Yefga. All rights reserved.
//

import UIKit

struct TabBarItem {
    
    let controller: UIViewController
    let mainColor: UIColor?
    
    init(type: TabBarItemType) {
        
        switch type {
        case .Home:
            let view = HomeViewController(nibName: nil, bundle: nil)
            self.controller = view
            self.mainColor = .systemIndigo
            
        case .Favorite:
            let view = FavoriteViewController(nibName: nil, bundle: nil)
            self.controller = view
            self.mainColor = .systemPink
            
        case .Log:
            let view = LogViewController(nibName: nil, bundle: nil)
            self.controller = view
            self.mainColor = .systemRed
            
        case .Contact:
            let view = ContactViewController(nibName: nil, bundle: nil)
            self.controller = view
            self.mainColor = .systemOrange
            
        }
        
    }
}
