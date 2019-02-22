//
//  Products.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Products{
    var productId:Int
    var productName:String
    var productQuantity:Int
    var productPrice:Float
    
    
    init(){
        self.productId=0
        self.productName=String()
        self.productQuantity=0
        self.productPrice=0.0
    }
    
    
    init(productId:Int,productName:String,productQuantity:Int,productPrice:Float){
        self.productId=productId
        self.productName=productName
        self.productQuantity=productQuantity
        self.productPrice=productPrice
    }

}
