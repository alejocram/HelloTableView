//
//  ViewController.swift
//  HelloTableView
//
//  Created by Alejocram on 6/10/22.
//

import UIKit

class ViewController: UIViewController {
    var sections = ["Animals", "Fruits", "Cars"]
    var rows: [[String]] = [
        ["Dolphin", "Cat", "Dog", "Ginnea Pig"],
        ["Apple", "Pears", "Plum"],
        ["Audi", "Tesla", "BMW"]
    ]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = rows[indexPath.section][indexPath.row]
        return cell
    }
}
