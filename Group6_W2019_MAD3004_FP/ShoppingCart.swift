//
//  ShoppingCart.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart{
    var cartId: Int
    var productId: Products?
    var quantity: Int
    var dateAdded: Date
    
    init(){
        self.cartId = 0
        self.productId = Products()
        self.quantity = 0
        self.dateAdded = Date()
    }
    
    init(cId: Int, pId: Products, qnty: Int, dateAdd: Date){
        self.cartId = cId
        self.productId = pId
        self.quantity = qnty
        self.dateAdded = dateAdd
    }
    
    func addCartItem(customer : Customer)
    {
        let dd = ShoppingCart(cId: self.cartId, pId: self.productId!, qnty: self.quantity, dateAdd: self.dateAdded)
        customer.shopCart.append(dd)
    }
    
    func updateQuantity(customer : Customer, newQty : Int) -> Bool
    {
        for c in customer.shopCart
        {
            if c.cartId == self.cartId
            {
                c.quantity = newQty
                return true
            }
        }
        return false
    }
    
    
    func cartDetails(){
        print("----------Shopping Cart Details----------")
        print("Cart Id: \(self.cartId)")
        print("Product Id: \(String(describing: self.productId!.productId)) --- \(String(describing: self.productId!.productName))")
        print("Date Added: \(self.dateAdded)")
        print("Quantity: \(self.quantity)")
    }
    
    func checkout(){
        
    }
    
}
