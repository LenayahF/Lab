//
//  ViewController.swift
//  Lab
//
//  Created by 11k on 1/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "Segway1", sender: sender)
    }
    @IBAction func forgotUserName(_ sender: UIButton) {
        performSegue(withIdentifier: "Segway1", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = “Forgot Password”
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = “Forgot Username”
        } else {
            segue.destination.navigationItem.title = "welcome \(userNameText.text ?? "user")"

    }
    
    
    
}

