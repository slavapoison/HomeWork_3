//
//  WelcomeViewController.swift
//  HomeWork_3
//
//  Created by Вячеслав Шангин on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var userName: String = ""
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeMessageLabel.text = "Welcome, \(userName)!"
    }
}
