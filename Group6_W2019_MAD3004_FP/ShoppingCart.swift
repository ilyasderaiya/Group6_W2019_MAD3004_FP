//
//  ShoppingCart.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart{
    var cardId: Int
    var productId: Int
    var quantity: Int
    var dateAdded: Date
    
    init(){
        self.cardId = 0
        self.productId = 0
        self.quantity = 0
        self.dateAdded = Date()
    }
    
    init(cId: Int, pId: Int, qnty: Int, dateAdd: Date){
        self.cardId = cId
        self.productId = pId
        self.quantity = qnty
        self.dateAdded = dateAdd
    }
    
    func addCartItem(){
        
    }
    
    func updateQuantity(){
        
    }
    
    func cartDetails(){
    
    }
    
    func checkout(){
        
    }
    
}
