//
//  Customer.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customer{
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    
    init(){
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
    }
    
    init(cusName: String, cusAddress: String, cusEmail: String, ccInfo: String, shipInfo: String) {
        self.customerName = cusName
        self.address = cusAddress
        self.email = cusEmail
        self.creditCardInfo = ccInfo
        self.shippingInfo = shipInfo
    }
    
    
    func register(){
        
    }
    
    func login(){
        
    }
    
    func updateProfile(){
        
    }
}
