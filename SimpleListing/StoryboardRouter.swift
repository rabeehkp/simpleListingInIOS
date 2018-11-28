//
//  StoryboardRouter.swift
//  SimpleListing
//
//  Created by Rabeeh KP on 27/11/18.
//  Copyright © 2018 Nfn_Labs. All rights reserved.
//

import UIKit
import Foundation

protocol StoryboardRouter {
    var name :String {get}
    var controller :UIViewController {get}
    var controllerTitle :String {get}
}

extension StoryboardRouter {
    func getController<T>(T:UIViewController.Type) -> T {
        return UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
}
enum Storyboards : StoryboardRouter {
    
    case Home
    case List
    case DetailedList
    
    var name: String {
        return "Main"
    }
    
    var controller: UIViewController {
        switch self {
        case .Home: return getController(T: ViewController.self)
        case .List: return getController(T: ListViewController.self)
        case .DetailedList: return getController(T: ListDetailsViewController.self)
        }
    }
    
    var controllerTitle: String {
        switch self {
        case .Home: return "Home"
        case .List: return "List"
        case .DetailedList: return "ListDetails"
        }
    }
}
