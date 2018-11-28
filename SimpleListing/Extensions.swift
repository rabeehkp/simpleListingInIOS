//
//  Extensions.swift
//  SimpleListing
//
//  Created by Rabeeh KP on 27/11/18.
//  Copyright © 2018 Nfn_Labs. All rights reserved.
//

import Foundation
import UIKit

//MARK: - UIViewController
extension UIViewController {
    func pushController(T:UIViewController) {
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(T, animated: true)
        }
    }
}
