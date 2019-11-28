//
//  FirstViewController.swift
//  NavigationDrawer
//
//  Created by Dheeraj Arora on 25/09/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var menuController: MenuViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuController = self.storyboard!.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        swipGestureAction()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // hide the default back buttons
        self.navigationItem.hidesBackButton = true
    }

    func swipGestureAction()  {
        let swipRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToGesture))
        swipRight.direction = UISwipeGestureRecognizer.Direction.right
        
        let swipLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToGesture))
        swipLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipRight)
        self.view.addGestureRecognizer(swipLeft)
    }
    
    @objc func respondToGesture(gesture: UISwipeGestureRecognizer){
        switch gesture.direction {
        case  .right:
            print("Right Swip")
            //show menu
            showMenu()
        case  .left:
            print("Left Swip")
            closeOnSwip()
        default:
            break
        }
    }
    @IBAction func menuAction(_ sender: UIBarButtonItem) {
        if AppDelegate.menu_bool{
           //show menu
            showMenu()
        }else{
          //close menu
            closeMenu()
        }
        
    }
    func closeOnSwip()  {
        if AppDelegate.menu_bool{
            //show menu
            //showMenu()
        }else{
            //close menu
            closeMenu()
        }
    }
    func showMenu() {
        UIView.animate(withDuration: 0.3) { ()-> Void in
            self.menuController.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menuController.view.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
            self.addChild(self.menuController)
            self.view.addSubview(self.menuController.view)
            AppDelegate.menu_bool = false
        }
    }
    
    func closeMenu() {
        UIView.animate(withDuration: 0.3, animations: { ()-> Void in
            self.menuController.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menuController.view.removeFromSuperview()
        }
        
        AppDelegate.menu_bool = true
    }

}
