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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.userName = userNameTF.text
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func ForgotUserName() {
        showAlert(with: "Oops!", message: "Your name is Elon Mask")
        userNameTF.text = ""
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Elon,", message: "Your password - bugaga")
        passwordTF.text = ""
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
            preferredStyle: .alert
        )
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    
    
}

