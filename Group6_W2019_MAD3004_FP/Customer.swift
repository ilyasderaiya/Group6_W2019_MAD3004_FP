//
//  Customer.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customer: User {
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    var ordr = [Orders]()
    var shopCart = [ShoppingCart]()
    
    
    override init(){
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        super.init()
    }
    
    init(cusName: String, cusAddress: String, cusEmail: String, ccInfo: String, shipInfo: String) {
        self.customerName = cusName
        self.address = cusAddress
        self.email = cusEmail
        self.creditCardInfo = ccInfo
        self.shippingInfo = shipInfo
        super.init(uId: <#T##String#>, pass: <#T##String#>, lstatus: <#T##String#>)
    }
    
    
    func register(){
        
    }
    
    func login(){
        
    }
    
    func updateProfile(){
        
    }
}
