//
//  Administrator.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Administrator{
    var adminName: String
    var email: String
    
    init(){
        self.adminName = String()
        self.email = String()
    }
    
    init(adName: String, Email: String){
        self.adminName = adName
        self.email = Email
    }
    
    func updateCatalog() -> Bool {
        return true
    }
}
