 //
//  AuthService.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 08/09/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation
import Alamofire

 class AuthService{
    
    let Defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get{
            return Defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            Defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken :String {
        get{
            return Defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            Defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail : String {
        get{
            return Defaults.value(forKey: USER_MAIL) as! String
        }
        set {
            Defaults.set(newValue, forKey: USER_MAIL)
        }
    }
    
    func registerEmail(email:String,password:String, completion:
        @escaping CompletitionHandler) {
        
        let email_lowercased = email.lowercased()
        let header = [
            "Content-Type" : "application/json; charset:utf-8"
        ]
        let body = [
            "email" : email_lowercased,
            "password" : password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil{
               completion(true)
            }else{
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
 }
 
