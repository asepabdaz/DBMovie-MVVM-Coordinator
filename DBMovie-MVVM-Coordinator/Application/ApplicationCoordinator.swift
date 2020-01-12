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

class ApplicationCoordinator: NSObject {
    private(set) var rootController: UINavigationController
    
    init(rootController: UINavigationController) {
        self.rootController = rootController
    }
}
