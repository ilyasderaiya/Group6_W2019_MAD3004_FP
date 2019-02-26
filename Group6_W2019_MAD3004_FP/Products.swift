//
//  Products.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Products{
    var productId: Int
    var productName: String
    var productPrice: Double
    
    
    init(){
        self.productId = 0
        self.productName = String()
        self.productPrice = Double()
    }
    
    
    init(productId: Int,productName: String ,productPrice: Double){
        self.productId=productId
        self.productName=productName
        self.productPrice=productPrice
    }
    
    func dispayData(){
        print("------------------------------------")
        print("Product ID: \(self.productId)")
        print("Product Name: \(self.productName)")
        print("Product Price: \(self.productPrice)")
    }

}
