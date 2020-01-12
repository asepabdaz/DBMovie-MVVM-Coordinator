//
//  AuthenticationCoordinator.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

class AuthenticationCoordinator: NSObject, Coordinatable{
    
    private(set) var rootController: UINavigationController
    private(set) lazy var childCoordinators: [Coordinatable] = []
    
    required init(rootViewController: UINavigationController) {
        self.rootController = rootViewController
        super.init()
    }
    
    func start() {
        
    }
    
    
}
