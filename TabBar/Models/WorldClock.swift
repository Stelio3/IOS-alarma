//
//  WorldClock.swift
//  TabBar
//
//  Created by PABLO HERNANDEZ JIMENEZ on 7/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import Foundation
class WorldClock{
    var hourtxt: String!
    var messagetxt: String!
    var zonetxt: String!
    init(hourtxt: String, zonetxt: String, messagetxt: String) {
        self.hourtxt = hourtxt
        self.zonetxt = zonetxt
        self.messagetxt = messagetxt
    }
}
