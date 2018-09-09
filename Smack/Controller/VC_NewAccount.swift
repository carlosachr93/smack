//
//  VC_NewAccount.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 26/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit



class VC_NewAccount: UIViewController {

    //Outlets
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var imgPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Busca algun tap en otra parte de la pantalla para cerrar el teclado
        HideKeyboard()
    }
    
   
    
    @IBAction func btnClose_Pressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func btnAvatar_pressed(_ sender: Any) {
    }
    
    @IBAction func btnBackgroundColor_Pressed(_ sender: Any) {
    }
    
    @IBAction func btnCrearCuenta_Pressed(_ sender: Any) {
        guard let email = txtEmail.text , txtEmail.text != "" else { return }
        guard let psw = txtPassword.text , txtPassword.text != "" else { return }
        AuthService.init().registerEmail(email: email, password: psw) { (success) in
            if success
            {
                print("Usuario registrado")
            }
        }
    }
}
