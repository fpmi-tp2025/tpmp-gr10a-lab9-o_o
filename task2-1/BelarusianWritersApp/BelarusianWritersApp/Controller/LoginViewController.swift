//
//  LoginViewController.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 19/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
            let password = passwordTextField.text, !password.isEmpty else {
                showAlert(title: "Ошибка", message: NSLocalizedString("fill_fields", comment: ""))
                return
        }
        
        if segmentedControl.selectedSegmentIndex == 0 {
            // Вход
            if AuthManager.validateUser(email: email, password: password) {
                navigateToMain()
            } else {
                showAlert(title: "Ошибка", message: NSLocalizedString("invalid_login", comment: ""))
            }
        } else {
            // Регистрация
            AuthManager.saveUser(email: email, password: password)
            showAlert(title: "Успех", message: NSLocalizedString("registered", comment: ""))
        }
    }
    
    private func navigateToMain() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        navigationController?.pushViewController(mainVC, animated: true)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
