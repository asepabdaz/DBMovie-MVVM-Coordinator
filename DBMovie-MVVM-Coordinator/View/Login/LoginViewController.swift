//
//  LoginViewController.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var complitionHandler: Optional<(AuthenticationAction) ->()> = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Login"
    }

    @IBAction func openSignUp() {
        if let handler = complitionHandler {
            handler(.OpenSignUp)
        }
    }
    
    @IBAction func authComplition() {
        if let handler = complitionHandler {
            handler(.AuthSuccess)
        }
    }
}
