//
//  VC_Chat.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 20/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class VC_Chat: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var btnOptions: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnOptions.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside )
        //Reconocimiento de SLIDE
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //Reconocimiento de Tap
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
