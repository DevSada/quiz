//
//  LoginViewController.swift
//  Quiz
//
//  Created by Alexander Petrenko on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: Private properties
    private let user = User.getUserData()
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarConroller = segue.destination as! UITabBarController
        let profileVC = tabBarConroller.viewControllers?.first as! ProfileViewController
        profileVC.user = user
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if usernameTextField.text != user.login || passwordTextField.text != user.password{
            showAlert()
            return false
        } else {return true}
    }
    
    
}

extension LoginViewController {
    func showAlert() {
        let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
