//
//  UIExtension.swift
//  GradientText
//
//  Created by steve.lai on 26/4/2022.
//

import UIKit

extension UIColor{
    static func gradientColor(bounds: CGRect, colors: [CGColor], startPoint: CGPoint, endPoint: CGPoint) -> UIColor{
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        
        UIGraphicsBeginImageContext(bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return UIColor(patternImage: image!)
    }
}
