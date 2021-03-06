//
//  Administrator.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Administrator: User{
    var adminName: String!
    var email: String!
    
    override init(){
        self.adminName = String()
        self.email = String()
        super.init()
    }
    
    init(adName: String, Email: String, userId: String, pass: String){
        self.adminName = adName
        
        if Email.verifyEmail(){
            self.email = Email
        }else{
            print("Enter a Valid Email for \(self.adminName!)")
            self.email = String()
        }
        super.init(uId: userId, pass: pass, lstatus: "Active")
    }
    
    func updateCatalog(products: [Products], updProduct: Products) -> Bool {
        return true
    }
    
    func displayData(){
        print("-------------------------------")
        print("Admin Name: \(self.adminName!)")
        print("Admin Email: \(self.email!)")
    }
}
