//
//  Customer.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customer: User, IDisplay {
    var customerName: String!
    var address: String!
    var email: String!
    var creditCardInfo: String!
    var shippingInfo: String!
    var ordr = [Orders]()
    var shopCart = [ShoppingCart]()
    
    
    override init(){
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.ordr = [Orders]()
        self.shopCart = [ShoppingCart]()
        super.init()
    }
    
    override init(uId: String, pass: String, lstatus: String) {
        self.ordr = [Orders]()
        self.shopCart = [ShoppingCart]()
        super.init(uId: uId, pass: pass, lstatus: lstatus)
    }
    
    
    func register(CustomerName: String, Address: String, eMail: String, CreditCardInfo: String, ShippingInfo: String, userId: String, password: String, loginStatus: String) -> Bool
    {
        
        // Validations
        
        self.customerName = CustomerName
        self.address = Address
        self.email = eMail
        self.creditCardInfo = CreditCardInfo
        self.shippingInfo = ShippingInfo
        super.userId = userId
        super.password = password
        
        
        return true
    }
    
    func login(){
        
    }
    
    func updateProfile(customers:[Customer]) -> Bool
    {
        //Validate customer.userId and customer.password in customers
        for i in customers
        {
            if i.userId == self.userId
            {
                i.customerName   = self.customerName
                i.address        = self.address
                i.email          = self.email
                i.shippingInfo   = self.shippingInfo
                i.creditCardInfo = self.creditCardInfo
                i.loginStatus    = "Profile Updated"
                print("\n---------------Profile Updated--------------- \n")
                i.displayData()
                return true
            }
            
        }
        return false
    }
    
    func checkout(){
        let order = Orders(orId: ordr.count+1, dtCreate: Date(), dtShip: Date(), cxName: self.customerName, cxId: self.userId , Status: "Order Created")
        self.ordr.append(order)
        order.displayData()
    }
    
    func displayData(){
        print("--------------Customer Details------------")
        print("Customer Name: \(String(describing: self.customerName))")
        print("Customer Address: \(String(describing: self.address))")
        print("Customer Email: \(String(describing: self.email))")
        print("Customer Credit Card: \(String(describing: self.creditCardInfo))")
        print("Shipping: \(String(describing: self.shippingInfo))")
    }
    
}
