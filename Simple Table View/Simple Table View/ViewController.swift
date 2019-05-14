//
//  ViewController.swift
//  Simple Table View
//
//  Created by RAMDHAN CHOUDHARY on 14/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: Variables, Instance declearations
    @IBOutlet weak var tableView: UITableView!
    var tableArray:[String] = ["Swift", "Java", "Angular", "Dot Net", "Python", "Java Script","Ruby","Objective – C"  ]
    
    
    // MARK: View Controller life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //Make sure you confirm table datasource and delegate in controller or storyboard
        tableView.dataSource = self
        tableView.delegate = self
        
        //register your table cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    // MARK: Table view Delegate and Datasource Methods
    
    //This will section or header for your table/list
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Number of totle list items
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    //Here you need to create table cell and show data on it
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (tableView.dequeueReusableCell(withIdentifier: "cell")!)
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
    }


}

