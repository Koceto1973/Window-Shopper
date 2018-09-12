//
//  Wage.swift
//  Window Shopper
//
//  Created by К.К. on 12.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import Foundation

class Wage{
    class func getHours( forWage wage:Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
