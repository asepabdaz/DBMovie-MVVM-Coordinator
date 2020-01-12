//
//  MovieCoordinator.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

class MovieCoordinator: NSObject, Coordinatable {
    private(set) var rootController: UINavigationController
    private(set) var childCoordinators: [Coordinatable] = []
    
    required init(rootViewController: UINavigationController) {
        self.rootController = rootViewController
        super.init()
    }
    
    func start() {
        
    }
    
    
}
