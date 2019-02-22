//
//  OrderDetails.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails{
    var orderId:Int
    var productId:Int
    var productName:String
    var quantity:Int
    var unitCost:Float
    var subtotal:Float
    init(){
        self.orderId=0
        self.productId=0
        self.productName=String()
        self.quantity=0
        self.unitCost=0.0
        self.subtotal=0.0
    }
   
    
}
