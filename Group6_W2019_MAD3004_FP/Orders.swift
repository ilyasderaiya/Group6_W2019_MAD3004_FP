//
//  Orders.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Orders: IDisplay{
    var orderId:Int
    var dateCreated:String
    var dateShipped:String
    var customerName:String
    var customerId:String
    var status:String
    var shippingId:String
    var si = [ShippingInfo]()   //ShippingInfo()
    var od = [OrderDetails]()//OrderDetails()
    
    init()
    {
        self.orderId=0
        self.dateCreated=String()
        self.dateShipped=String()
        self.customerName=String()
        self.customerId=String()
        self.status=String()
        self.shippingId=String()
    }
    
    init (orId: Int, dtCreate: String, dtShip: String, cxName: String, cxId: String, Status: String, ShippinId: String)
    {
        self.orderId = orId
        self.dateCreated = dtCreate
        self.dateShipped = dtShip
        self.customerName = cxName
        self.customerId = cxId
        self.status = Status
        self.shippingId = ShippinId
    }
    
    func displayData(){
        
        print("-----------Order Details-------------")
        print("Order ID: \(self.orderId)")
        print("Order Date: \(self.dateCreated)")
        print("Shipping Date: \(self.dateShipped)")
        print("Customer Name: \(self.customerName)")
        print("Customer ID: \(self.customerId)")
        print("Order Status: \(self.status)")
        print("Shipping ID: \(self.shippingId)")
    }
}
