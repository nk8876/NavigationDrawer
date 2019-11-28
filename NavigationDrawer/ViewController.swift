//
//  ViewController.swift
//  NavigationDrawer
//
//  Created by Dheeraj Arora on 25/09/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    @IBAction func goToNext(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
       self.navigationController?.pushViewController(next, animated: true)

    }
    
}

