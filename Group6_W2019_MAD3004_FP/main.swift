//
//  main.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation



// Creating Administrator user
var adm = Administrator(adName: "Ayub ", Email: "9ayub@gmail", userId: "Ayub", pass: "abcd")
var adm1 = Administrator(adName: "Ilyas ", Email: "ilyasderaiya@gmail.com", userId: "ilyasderaiya", pass: "Abcd12345")

// Creating products
var p1 = Products(productId: 01, productName: "Macbook Pro w/TouchBar", productPrice: 2200.0)
var p2 = Products(productId: 02, productName: "Mac Mini", productPrice: 1799.0)
var p3 = Products(productId: 03, productName: "Lan Port Dongle", productPrice: 25.0)
var p4 = Products(productId: 04, productName: "Monitor", productPrice: 240.0)
var p5 = Products(productId: 05, productName: "Iphone 8 plus", productPrice: 800.0)
var products = [Products]()
products.append(p1)
products.append(p2)
products.append(p3)
products.append(p4)
products.append(p5)


//Display Product Data
for i in products{
    i.displayData()
}

//Updating 1 product
let pUpdated = Products(productId: 05, productName: "Iphone 7 Plus", productPrice: 700.0)


if adm1.updateCatalog(products: products, updProduct: pUpdated)
{
    print("Product Updated Succesfully")
    products[4] = pUpdated
}


//Display Products after Update
for i in products{
    i.displayData()
}

// Creating customer users
var customers = [Customer]()

var cust1 = Customer()
var cust2 = Customer()
var result1 = cust1.register(CustomerName: "Shivani", Address: "5 scarboro St.", eMail: "shivani@gmail.com", CreditCardInfo: "1234 4567 3534 5433", ShippingInfo: "same address", userId: "shivani", password: "123", loginStatus: "Registered")
if result1
{
    customers.append(cust1)
}
var result2 = cust2.register(CustomerName: "Abhishekl T", Address: "56 Torbram Rd.", eMail: "abishekt@gmail.com", CreditCardInfo: "1558 4247 6854 8856", ShippingInfo: "same address", userId: "Abhi", password: "123", loginStatus: "Registered")
if result2
{
    customers.append(cust2)
}

//Displaying Customers
for i in customers
{
    i.displayData()
}

// Accesing with user info
var user1 = Customer(uId:"Abhi", pass: "123", lstatus: "Accessing")

if user1.verifyLogin(customers: customers, user: user1)
{
    
    print("Welcome: \(String(describing: user1.customerName))")
}
else
{
    print(user1.loginStatus!)
}

// Update customer info
user1.address = "56 Tomken Rd, ON"
user1.customerName = "Abhishek T."

if !user1.updateProfile(customers: customers)
{
    print("Record Updation Failed")
}


// customer add 5 products to Shopping Cart
var cartItem1 = ShoppingCart(cId: 1, pId: p1, qnty: 2, dateAdd: Date())
cartItem1.addCartItem(customer: user1)

var cartItem2 = ShoppingCart(cId: 2, pId: p2, qnty: 1, dateAdd: Date())
cartItem2.addCartItem(customer: user1)

var cartItem3 = ShoppingCart(cId: 3, pId: p3, qnty: 1, dateAdd: Date())
cartItem3.addCartItem(customer: user1)

var cartItem4 = ShoppingCart(cId: 4, pId: p4, qnty: 3, dateAdd: Date())
cartItem4.addCartItem(customer: user1)

var cartItem5 = ShoppingCart(cId: 5, pId: p5, qnty: 5, dateAdd: Date())
cartItem5.addCartItem(customer: user1)



print("\n------------------- displaying Items:------------------ \n")
for c in user1.shopCart
{
    c.cartDetails()
}


// Customer update quantity of 1 product
var result3 = cartItem5.updateQuantity(customer: user1, newQty: 2)
if !result3
{
    print("Update Failed")
}
print("\n--------------------Display List Updated--------------------- \n")
for c in user1.shopCart
{
    c.cartDetails()
}

print("---------------------END---------------------")








