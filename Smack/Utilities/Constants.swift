//
//  Constants.swift
//  Smack
//
//  Created by Carlos Alberto Chavez Reyes on 23/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation

typealias CompletitionHandler = (_ Success : Bool) -> ()
//URL CONSTATNT
let GLOBAL_URL = "https://texteame.herokuapp.com/v1/"
let URL_REGISTER = "\(GLOBAL_URL)/account/register"
//Segues
let TO_LOGIN = "toLogin"
let TO_ACCOUNT = "toNewAccount"
let UNWIND = "unwindToSegue"

//USER DEFAULTS
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_MAIL = "userEmail"
