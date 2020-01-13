//
//  Array+Extension.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import Foundation

extension Array {
    mutating func removeObject<U: Equatable>(object: U) {
        var index: Int?
        
        for (id, objectToCompare) in self.enumerated() {
            if let to = objectToCompare as? U {
                if object == to {
                    index = id
                }
            }
        }
        
        if let indexUnwarp = index {
            self.remove(at: indexUnwarp)
        }
    }
}
