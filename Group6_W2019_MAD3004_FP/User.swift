//
//  User.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class User{
    var userId:String!
    var password:String!
    var loginStatus:String!
    
    init(){
        self.userId = String()
        self.password = String()
        self.loginStatus = "Registered"
    }
    
    init(uId:String, pass:String, lstatus:String){
        self.userId = uId
        
        if pass.isValidPassword(){
            self.password = pass
        }else{
            print("Enter a valid Password with 8 character and One Upper and one lower Case letter")
        }
        
        self.loginStatus = lstatus
    }
    
    
    func verifyLogin(customers:[Customer], user : Customer) -> Bool
    {
        //Validate
        for i in customers
        {
            if i.userId == user.userId
            {
                user.customerName   = i.customerName
                user.address        = i.address
                user.email          = i.email
                user.shippingInfo   = i.shippingInfo
                user.creditCardInfo = i.creditCardInfo
                user.loginStatus    = "Active"
                return true
            }
        }
        user.loginStatus    = "Access Denied"
        return false
    }
    
}
