//
//  ChatViewController.swift
//  TabBar
//
//  Created by PABLO HERNANDEZ JIMENEZ on 31/10/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    internal var arHour: [WorldClock] = []
    init(){
        super.init(nibName: "ChatViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "world")
        self.title = NSLocalizedString("title_chats", comment: "")
    }
    convenience init(options: [WorldClock]) {
        self.init()
        self.arHour = options
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBarButtonsItem()
        loadAllOptions()
        registerCells()
        // Do any additional setup after loading the view.
    }
    private func setupBarButtonsItem(){
        let editBarButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(pipos))
        navigationItem.setLeftBarButton(editBarButton, animated: false)
        let addBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pipos))
        navigationItem.setRightBarButton(addBarButton, animated: false)
    }
    @objc func pipos(){
        
    }
    private func registerCells(){
        let identifier = "WorldClockTableViewCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func loadAllOptions(){
        let arhour1 = WorldClock(hourtxt: "03:30", zonetxt: "Zagreb", messagetxt: "Hot")
        let arhour2 = WorldClock(hourtxt: "23:45", zonetxt: "New York", messagetxt: "Cold")
        let arhour3 = WorldClock(hourtxt: "05:45", zonetxt: "Cupertino", messagetxt: "Hot")
        let arhour4 = WorldClock(hourtxt: "06:45", zonetxt: "Barcelona", messagetxt: "Sun")
        let arhour5 = WorldClock(hourtxt: "06:45", zonetxt: "Madrid", messagetxt: "Windy")
        let arhour6 = WorldClock(hourtxt: "07:45", zonetxt: "Grecia", messagetxt: "Windy")
        let arhour7 = WorldClock(hourtxt: "05:45", zonetxt: "Canarias", messagetxt: "storm")
        let arhour8 = WorldClock(hourtxt: "05:45", zonetxt: "Tenerife", messagetxt: "Sun")
        arHour.append(arhour1)
        arHour.append(arhour2)
        arHour.append(arhour3)
        arHour.append(arhour4)
        arHour.append(arhour5)
        arHour.append(arhour6)
        arHour.append(arhour7)
        arHour.append(arhour8)
    }
}
extension ChatViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return arHour.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: WorldClockTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "WorldClockTableViewCell", for: indexPath) as? WorldClockTableViewCell)!
        let cellRow = arHour[indexPath.row]
        cell.lblhourAlarm.text = cellRow.hourtxt
        cell.lbltimeAlarm.text = cellRow.messagetxt
        cell.lblzoneAlarm.text = cellRow.zonetxt
        //cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (arHour.count > 0)
    }
}
