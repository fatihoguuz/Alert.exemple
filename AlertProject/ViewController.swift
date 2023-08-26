//
//  ViewController.swift
//  AlertProject
//
//  Created by Fatih Oğuz on 25.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mailTextFiled: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var secondPasswordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        /* let alert = UIAlertController(title: "Error", message: "Please Enter Information", preferredStyle: UIAlertController.Style.alert)
         
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
         
         alert.addAction(okButton)
         
         self.present(alert, animated: true, completion: nil)
         
         */
        func makeAlert(titleInput: String, messageInput: String) {
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
             
             let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
             
             alert.addAction(okButton)
             
             self.present(alert, animated: true, completion: nil)
        }
        
        if mailTextFiled.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username Not Found")
        }else if passwordTextFiled.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Not Found")
        }else if secondPasswordTextFiled.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Do No Match")
        }else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
}
