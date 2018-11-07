//
//  ContactViewController.swift
//  TabBar
//
//  Created by PABLO HERNANDEZ JIMENEZ on 31/10/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    internal var arHour: [AlarmHour] = []
    init(){
        super.init(nibName: "ContactViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "alarm")
        self.title = NSLocalizedString("title_alarm", comment: "")
    }
    convenience init(options: [AlarmHour]) {
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
        let editBarButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(cancelPressed))
        navigationItem.setLeftBarButton(editBarButton, animated: false)
        let addBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(cancelPressed))
        navigationItem.setRightBarButton(addBarButton, animated: false)
    }
    @objc private func cancelPressed(){
        
    }
    @objc private func actorsPressed(){
       
    }
    private func registerCells(){
        let identifier = "AlarmTableViewCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func loadAllOptions(){
        let arhour1 = AlarmHour(hourtxt: "03:30", messagetxt: "alarm")
        let arhour2 = AlarmHour(hourtxt: "05:30", messagetxt: "alarm, every day")
        let arhour3 = AlarmHour(hourtxt: "05:45", messagetxt: "alarm")
        let arhour4 = AlarmHour(hourtxt: "06:00", messagetxt: "alarm")
        let arhour5 = AlarmHour(hourtxt: "06:15", messagetxt: "alarm, every day")
        let arhour6 = AlarmHour(hourtxt: "07:15", messagetxt: "alarm, every weekday")
        let arhour7 = AlarmHour(hourtxt: "07:45", messagetxt: "alarm, every weekday")
        let arhour8 = AlarmHour(hourtxt: "10:30", messagetxt: "alarm, every weekend")
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
extension ContactViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return arHour.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: AlarmTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "AlarmTableViewCell", for: indexPath) as? AlarmTableViewCell)!
            let cellRow = arHour[indexPath.row]
            cell.lblhourAlarm.text = cellRow.hourtxt
        cell.lbltimeAlarm.text = cellRow.messagetxt
            cell.switchCell.isOn = false
            //cell.accessoryType = .disclosureIndicator
            return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (arHour.count > 0)
    }
}
