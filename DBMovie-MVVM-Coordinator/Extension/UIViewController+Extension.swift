//
//  UIViewController+Extension.swift
//  DBMovie-MVVM-Coordinator
//
//  Created by Asep Abdaz on 12/01/20.
//  Copyright © 2020 Asep Abdaz. All rights reserved.
//

import UIKit

//extension UIViewController {
//    
//    private class func instantiateControllerInStoryboard<T: UIViewController>(storyboard: UIStoryboard, identifier: String) -> T {
//        
//        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
//    }
//    
//    class func controllerInStoryboard(storyboard: UIStoryboard, identifier: String) -> Self {
//        
//        return instantiateControllerInStoryboard(storyboard: storyboard, identifier: identifier)
//    }
//    
//    class func controllerInStoryboard(storyboard: UIStoryboard) -> Self {
//        
//        return controllerInStoryboard(storyboard: storyboard, identifier: nameOfClass)
//    }
//    
//    class func controllerFromStoryboard(storyboard: Storyboards) -> Self {
//        
//        return controllerInStoryboard(storyboard: UIStoryboard(name: storyboard.rawValue, bundle: nil), identifier: nameOfClass)
//    }
//}
//
//private extension NSObject {
//    
//    class var nameOfClass: String {
//        return (NSStringFromClass(self).components(separatedBy: ".")).last!
//    }
//}
//
//extension UIView {
//    
//    private class func viewInNibNamed<T: UIView>(nibNamed: String) -> T {
//        
//        return Bundle.main.loadNibNamed(nibNamed, owner: nil, options: nil)?.first as! T
//    }
//    
//    class func nib() -> Self {
//        
//        return viewInNibNamed(nibNamed: nameOfClass)
//    }
//    
//    class func nib(frame: CGRect) -> Self {
//        
//        let view = nib()
//        view.frame = frame
//        view.layoutIfNeeded()
//        
//        return view
//    }
//}
//
//enum Storyboards: String {
//    
//    case Form = "Form"
//    case Items = "Items"
//    case Auth = "Auth"
//    
//}

