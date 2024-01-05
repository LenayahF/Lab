//
//  ViewController.swift
//  Lab
//
//  Created by 11k on 1/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var forgotUsername: UIButton!


    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func forgotP(_ sender: UIButton) {
        performSegue(withIdentifier: "segway1", sender: sender)
    }
    
    @IBAction func forgotU(_ sender: UIButton) {
        performSegue(withIdentifier: "segway1", sender: sender)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = "welcome \(username.text ?? "user")"
            
        }
        
    }
    
    
    
}

