//
//  LoginViewController.swift
//  TEST_KEYBOARD
//
//  Created by CedricSoubrie on 07/11/2017.
//  Copyright © 2017 CedricSoubrie. All rights reserved.
//

import UIKit
import MBProgressHUD

class LoginViewController: UITableViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func launchLogin () {
//        guard let userName = self.emailTextField.text, userName.count > 0 else {
//            self.displayAlert(with: "Missing user name", isError:true)
//            return
//        }
//
//        guard let password = self.passwordTextField.text, password.count > 0 else {
//            self.displayAlert(with: "Missing password", isError:true)
//            return
//        }
//
//        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
//        hud.label.text = "Connexion en cours..."
//
//        RequestManager.requestLogin(userName: userName, password: password) { result in
//            hud.hide(animated: true)
//            switch result {
//            case .success :
//                self.displayAlert(with: "That's perfect", isError:false)
//            case let .error(error) :
//                self.displayAlert(with: "Connection impossible \(error)", isError:true)
//            }
//        }
    }

//    func displayAlert (with message: String, isError: Bool) {
//        let title = isError ? "Error":"Success"
//        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    }
    
    @IBAction func loginClicked () {
        self.launchLogin()
    }
}

extension LoginViewController : UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == self.emailTextField {
//            self.passwordTextField.becomeFirstResponder()
//        }
//        else if textField == self.passwordTextField {
//            self.passwordTextField.resignFirstResponder()
//            self.launchLogin()
//        }
//        return false
//    }
}
