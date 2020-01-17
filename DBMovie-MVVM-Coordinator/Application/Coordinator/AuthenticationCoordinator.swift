//
//  AuthenticationCoordinator.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

enum AuthenticationAction {
    case OpenSignUp
    case AuthSuccess
}

class AuthenticationCoordinator: NSObject, Coordinatable{
    
    private(set) var rootController: UINavigationController
    private(set) lazy var childCoordinators: [Coordinatable] = []
    var complitionHandler: ComplitionBlock?
    
    required init(rootViewController: UINavigationController) {
        self.rootController = rootViewController
        super.init()
    }
    
    func start() {
        let loginController = LoginViewController()
        loginController.complitionHandler = { action in
            switch action {
            case .OpenSignUp:
                self.pushSignUp()
            case .AuthSuccess:
                loginController.dismiss(animated: true) {
                    self.authSuccess()
                }
                return
            }
        }
        rootController.pushViewController(loginController, animated: true)
    }
}

private extension AuthenticationCoordinator {
    func pushSignUp() {
        let signUpController = SignUpViewController()
        signUpController.complitionHandler = { action in
            switch action {
            case .AuthSuccess:
                return
            default:
                print("some")
            }
            
        }
        rootController.pushViewController(signUpController, animated: false)
    }
    func authSuccess() {
        if let handler = complitionHandler {
            handler()
        }
    }
}
