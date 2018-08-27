//
//  VC_NewAccount.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 26/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class VC_NewAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClose_Pressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
