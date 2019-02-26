//
//  ShippingInfo.swift
//  Group6_W2019_MAD3004_FP
//
//  Created by ilyas on 2019-02-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShippingInfo{
    var shippingId: Int
    var shippingType: String
    var shippingCost: Float
    var shippingRegionId: String
    
    init(){
        self.shippingId = 0
        self.shippingType = String()
        self.shippingCost = 0.0
        self.shippingRegionId = String()
    }
    
    init(sId: Int, sType: String, sCost: Float, sRegionId: String){
        self.shippingId = sId
        self.shippingType = sType
        self.shippingCost = sCost
        self.shippingRegionId = sRegionId
    }
    
    func updateShippingInfo(){
        
    }
}
