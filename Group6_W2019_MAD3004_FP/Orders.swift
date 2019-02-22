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
    
    func displayData(){
        
    }
}
