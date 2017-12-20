//
//  ViewController.swift
//  Registration
//
//  Created by Admin on 11/12/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SingIn(_ sender: UIButton) {
        guard let login = login.text, login.count > 0  else {
            let alertLogin = UIAlertController(title: "Error", message: "field login is empty", preferredStyle: .alert)
            alertLogin.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            return
        }
        guard let password = password.text, password.count > 0  else {
            let alertPassword = UIAlertController(title: "Error", message: "field password is empty", preferredStyle: .alert)
            alertPassword.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            return
        }
        var hardcodeData: [(String, String)] = []
        hardcodeData.append(("Artsiom", "Sadyryn"))
        hardcodeData.append(("Ivan", "cat"))
        hardcodeData.append(("Cate", "XOXO"))
        var isDataRight = Bool()
        for (name, password) in hardcodeData {
            if login.lowercased() == name.lowercased() && password == password {
                isDataRight = true
                break
            }
            else {
                isDataRight = false
            }
        }
        if isDataRight {
            self.performSegue(withIdentifier: "goNow", sender: sender)
        }
        else {
            let wrongInput = UIAlertController(title: "Alert", message: "Login or password is wrong", preferredStyle: .alert)
            wrongInput.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(wrongInput, animated: true, completion: nil)
        }
    }
    }


