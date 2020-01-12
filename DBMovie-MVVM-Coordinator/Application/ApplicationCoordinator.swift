//
//  ApplicationCoordinator.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

@objc protocol Coordinatable {
    var childCoordinators: [Coordinatable] { get }
    init(rootViewController: UINavigationController)
    func start()
}

class ApplicationCoordinator: NSObject, Coordinatable {
    
    private(set) var rootController: UINavigationController
    
    private(set) lazy var childCoordinators: [Coordinatable] = []
    
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
        mainVc.start()
        childCoordinators.append(mainVc)
    }
    
    func showAuth() {
        let authenticationCoordinator = AuthenticationCoordinator(rootViewController: rootController)
        authenticationCoordinator.start()
        childCoordinators.append(authenticationCoordinator)
    }
}
