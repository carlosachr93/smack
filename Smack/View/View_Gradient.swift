//
//  View_Gradient.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 22/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit
@IBDesignable
class View_Gradient: UIView {
    @IBInspectable var topColor : UIColor = UIColor.blue{
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor : UIColor = UIColor.green{
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
         let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }

}
