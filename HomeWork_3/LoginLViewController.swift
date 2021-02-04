//
//  LoginLViewController.swift
//  HomeWork_3
//
//  Created by Вячеслав Шангин on 03.02.2021.
//

import UIKit

class LoginLViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func forgotButton(_ sender: UIButton) {
    
        var message = "Your user name is User"
        
        if sender.tag == 2 {
            message = "Your password is Password"
        }
        
        showAlertMessage(message: message)

    }
    
    @IBAction func logInButtonAction() {
        if userNameTextField.text == "User" && passwordTextField.text == "Password" {
            self.performSegue(withIdentifier: "login", sender: self)
        } else {
            showAlertMessage(message: "Login or password is wrong")
        }
    }
    
    @IBAction func unwindAction(unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlertMessage(message: String) {
        let alert = UIAlertController( title: "Ooops!",
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction( title: NSLocalizedString("OK", comment: "Default action"),
                                      style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
}
