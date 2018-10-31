//
//  ChatViewController.swift
//  TabBar
//
//  Created by PABLO HERNANDEZ JIMENEZ on 31/10/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    init(){
        super.init(nibName: "ChatViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "chat")
        self.title = NSLocalizedString("title_chats", comment: "")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let barButtonItem = UIBarButtonItem(title:"example", style: .plain, target: self, action: #selector(pipos))
        navigationItem.setLeftBarButton(barButtonItem, animated: false)

        // Do any additional setup after loading the view.
    }
    @objc func pipos(){
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
