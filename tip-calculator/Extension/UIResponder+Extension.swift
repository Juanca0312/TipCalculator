//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 20/09/23.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
