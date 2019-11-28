//
//  MenuViewController.swift
//  NavigationDrawer
//
//  Created by Dheeraj Arora on 25/09/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var menuTableView: UITableView!
    var arrTitle:[String] = ["1","2","3","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
        cell.menuName.text = arrTitle[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let fiestVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstVC") as! FirstVC
            self.navigationController?.pushViewController(fiestVC, animated: true)
        }
    }

}
