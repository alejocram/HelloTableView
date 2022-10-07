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
        tableView.delegate = self
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
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell") as! MyTableViewCell
        cell.cellLabel.text = rows[indexPath.section][indexPath.row]
        cell.cellImageView.image = #imageLiteral(resourceName: "logo_girardota_url.png")
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You are selected \(rows[indexPath.section][indexPath.row])")
    }
}

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
}
