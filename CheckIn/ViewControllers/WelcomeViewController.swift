//
//  WelcomeViewController.swift
//  CheckIn
//
//  Created by Anton on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var helloLable: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLable.text = "Welcom, \(user.name)"
    }
    
}
