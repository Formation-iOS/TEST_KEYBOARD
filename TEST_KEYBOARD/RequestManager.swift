//
//  RequestManager.swift
//  TEST_DEMO3
//
//  Created by CedricSoubrie on 07/11/2017.
//  Copyright © 2017 CedricSoubrie. All rights reserved.
//

import UIKit


func delay(seconds: Double, completion: @escaping ()-> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}

class RequestManager: NSObject {
    
        enum LoginResult {
            case success
            case error (WSError)
        }

        enum WSError : Error {
            case badPassword
        }
    
    static func requestLogin (userName: String,
                              password: String, result : @escaping (_ result: LoginResult) -> Void) {
        delay (seconds: 1.5) {
            if userName.starts(with: "error") {
                result(.error(.badPassword))
            }
            else {
                result (.success)
            }
        }
    }
}
