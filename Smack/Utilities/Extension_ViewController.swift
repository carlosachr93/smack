//
//  Extension_ViewController.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 09/09/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation

extension UIViewController {
    func HideKeyboard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(deshabilitaTeclado))
        view.addGestureRecognizer(tap)
    }
    
    @objc func deshabilitaTeclado(){
        view.endEditing(true)
    }
}
