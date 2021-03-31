//
//  ViewController.swift
//  CheckIn
//
//  Created by Anton on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
     let userName = "Elon Mask"
    private let userPassword = "bugaga"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.userName = userNameTF.text
        welcomVC.userPassword = passwordTF.text
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func ForgotUserName() {
        showAlert(with: "Oops!", message: "Your name is \(userName)")
        self.userNameTF.text = ""
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Elon,", message: "Your password - \(userPassword)")
        self.passwordTF.text = ""
    }
    
    @IBAction func logInActionButton() {
        if userNameTF.text != "Elon Mask" || passwordTF.text != "bugaga" {
            showAlert(with: "Error", message: "Incorrect user name or password")
        }
       
    }
    
    private func showAlert(with title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
}

