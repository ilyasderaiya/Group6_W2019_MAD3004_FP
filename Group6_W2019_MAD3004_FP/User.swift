//
//  User.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class User{
    var userId:String
    var password:String
    var loginStatus:String
    init(){
        self.userId=String()
        self.password=String()
        self.loginStatus=String()
    }
    init(uId:String,pass:String,lstatus:String){
        self.userId=uId
        self.password=pass
        self.loginStatus=lstatus
    }
    func verifyLogin(usId:String , pass:String) -> Bool{
        if(self.userId == usId && self.password == pass){
            return true
        }
        else{
            return false
        }
    }
}
