//
//  ApplicationCoordinator.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

typealias ComplitionBlock = () -> ()

@objc protocol Coordinatable {
    var childCoordinators: [Coordinatable] { get }
    @objc optional var complitionHandler: ComplitionBlock? { get set }
    init(rootViewController: UINavigationController)
    func start()
}

class ApplicationCoordinator: NSObject, Coordinatable {
    
    private(set) var rootController: UINavigationController
    
    private(set) lazy var childCoordinators = [Coordinatable]()
    
    required init(rootViewController: UINavigationController) {
        self.rootController = rootViewController
        super.init()
    }
    
    func start() {
        isLoggedIn() ? showAuth() : showAuth()
    }
    
    func isLoggedIn() -> Bool {
        return false
    }
    
    func showMainViewController() {
        let mainVc = MovieCoordinator(rootViewController: rootController)
        mainVc.complitionHandler = {
            self.childCoordinators.removeObject(object: mainVc)
        }
        mainVc.start()
        childCoordinators.append(mainVc)
    }
    
    func showAuth() {
        let authenticationCoordinator = AuthenticationCoordinator(rootViewController: rootController)
        authenticationCoordinator.complitionHandler = {
            self.showMainViewController()
            self.childCoordinators.removeObject(object: authenticationCoordinator)
        }
        authenticationCoordinator.start()
        childCoordinators.append(authenticationCoordinator)
    }
}
