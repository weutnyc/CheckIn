//
//  WelcomeViewController.swift
//  CheckIn
//
//  Created by Anton on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var helloLable: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLable.text! += userName
    }
    
}
