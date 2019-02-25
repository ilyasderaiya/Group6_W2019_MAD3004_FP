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
    
    func addCartItem(customer : Customer)
    {
        let dd = ShoppingCart(cId: self.cardId, pId: self.productId, qnty: self.quantity, dateAdd: self.dateAdded)
        customer.shopCart.append(dd)
    }
    
    func updateQuantity(customer : Customer, newQty : Int) -> Bool
    {
        print("Customer Items------>:")
        for c in customer.shopCart
        {
            print("Item:",c.productId)
            if c.cardId == self.cardId
            {
                c.quantity = newQty
                return true
            }
        }
        return false
    }
    
    
    func cartDetails(){
    
    }
    
    func checkout(){
        
    }
    
}
