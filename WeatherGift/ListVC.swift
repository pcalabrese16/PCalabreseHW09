//
//  ListVC.swift
//  WeatherGift
//
//  Created by Patrick Calabrese on 3/16/17.
//  Copyright © 2017 Patrick Calabrese. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var locationsArray = [String]()
    var currentPage = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }



}

extension ListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath)
        cell.textLabel?.text = locationsArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentPage = indexPath.row
        print("Hey! I've been clicked at indexPath.row \(indexPath.row)")
    
    
}
}
