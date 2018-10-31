//
//  Style.swift
//  TabBar
//
//  Created by PABLO HERNANDEZ JIMENEZ on 31/10/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import Foundation
import UIKit

class Style {
    class func customize() {
        UINavigationBar.appearance().barTintColor = ColorStyle.navigationBarTintColor()
        UITabBar.appearance().barTintColor = ColorStyle.navigationBarTintColor()
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white, kCTFontAttributeName: UIFont(name: "Scare Arms", size: 26)] as? [NSAttributedStringKey : Any]
        UITabBarItem.appearance().setTitleTextAttributes([kCTFontAttributeName as NSAttributedStringKey : UIFont(name: "Scare Arms", size: 15)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([kCTFontAttributeName as NSAttributedStringKey : UIFont(name: "Scare Arms", size: 15)!], for: .selected)
    }
}
