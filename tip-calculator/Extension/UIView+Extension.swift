//
//  UIView+Extension.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 17/09/23.
//

import UIKit

extension UIView {
    func addShadow(
        offset: CGSize,
        color: UIColor,
        radius: CGFloat,
        opacity: Float) {
            layer.cornerRadius = radius
            layer.masksToBounds = false
            layer.shadowOffset = offset
            layer.shadowColor = color.cgColor
            layer.shadowRadius = radius
            layer.shadowOpacity = opacity
            let backgroundCGColor = backgroundColor?.cgColor
            backgroundColor = nil
            layer.backgroundColor = backgroundCGColor
        }
    
    func addConerRadius(radius: CGFloat) {
        layer.masksToBounds = false
        layer.cornerRadius = radius
    }
    
    func addRoundedCorners(corners: CACornerMask, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.maskedCorners = [corners]
    }
}
