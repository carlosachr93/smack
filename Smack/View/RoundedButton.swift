//
//  RoundedButton.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 09/09/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit
@IBDesignable

class RoundedButton: UIButton {
    @IBInspectable var cornerRadious : CGFloat = 3.0 {
        didSet{
            self.layer.cornerRadius = cornerRadious
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = cornerRadious
    }
}
