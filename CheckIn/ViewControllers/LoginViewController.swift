//
//  ViewController.swift
//  CheckIn
//
//  Created by Anton on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    
    private let user = User.getUser()
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.userName = user.login
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func ForgotUserName() {
        showAlert(with: "Oops!", message: "Your name is \(user.login)")
        userNameTF.text = ""
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Elon,", message: "Your password - \(user.password)")
        passwordTF.text = ""
    }
    
    @IBAction func logInActionButton() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Error", message: "Incorrect user name or password")
            passwordTF.text = ""
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    
}

