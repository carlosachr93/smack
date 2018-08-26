 //
//  VC_Channel.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 20/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class VC_Channel: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Ancho de slidegit 
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    
    @IBAction func btnLogin_Pressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
        
    }
    @IBAction func btnClose_Pressed(_ sender: Any) {
    }
    
}
 
