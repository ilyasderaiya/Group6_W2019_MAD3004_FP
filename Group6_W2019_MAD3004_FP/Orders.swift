//
//  Orders.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Orders: IDisplay{
    var orderId:Int
    var dateCreated:Date
    var dateShipped:Date
    var customerName:String
    var customerId:String
    var status:String
    var si = [ShippingInfo]()   //ShippingInfo()
    
    init()
    {
        self.orderId=0
        self.dateCreated=Date()
        self.dateShipped=Date()
        self.customerName=String()
        self.customerId=String()
        self.status=String()
       
    }
    
    init (orId: Int, dtCreate: Date, dtShip: Date, cxName: String, cxId: String, Status: String)
    {
        self.orderId = orId
        self.dateCreated = dtCreate
        self.dateShipped = dtShip
        self.customerName = cxName
        self.customerId = cxId
        self.status = Status
        
    }
    
    func displayData(){
        
        print("-----------Order Details-------------")
        print("Order ID: \(self.orderId)")
        print("Order Date: \(self.dateCreated)")
        print("Shipping Date: \(self.dateShipped)")
        print("Customer Name: \(self.customerName)")
        print("Customer ID: \(self.customerId)")
        print("Order Status: \(self.status)")
       // print("Shipping ID: \(self.shippingId)")
    }
}
