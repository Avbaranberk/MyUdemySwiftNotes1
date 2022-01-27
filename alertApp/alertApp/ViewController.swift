//
//  ViewController.swift
//  alertApp
//
//  Created by Baran Berk Kılıç on 22.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var AlertApplicationLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
   
    @IBOutlet weak var passwordField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "error", message: "username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) {
            (UIAlertAction) in print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated:true, completion: nil)
    }*/
       
        if usernameField.text == "" {
           makealert(titleInput: "username error", Message: "username not found")
        }
        if passwordField.text != passwordField2.text {
            makealert(titleInput: "password error", Message: "passwords are not the same")
            
        }else if passwordField.text == passwordField2.text {
            makealert(titleInput: "success", Message: "your signed up succesfully")
        }else {
            print("wrong value")
        }
        func makealert(titleInput: String, Message: String) {
            let alert = UIAlertController(title: titleInput, message: Message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
}

}
