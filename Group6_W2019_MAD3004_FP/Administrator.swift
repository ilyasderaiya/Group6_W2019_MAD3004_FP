//
//  Administrator.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Administrator: User{
    var adminName: String
    var email: String
    
    override init(){
        self.adminName = String()
        self.email = String()
        super.init()
    }
    
    init(adName: String, Email: String, userId: String, pass: String){
        self.adminName = adName
        self.email = Email
        super.init(uId: userId, pass: pass, lstatus: "Active")
    }
    
    func updateCatalog() -> Bool {
        return true
    }
}
