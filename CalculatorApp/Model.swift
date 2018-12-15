//
//  Model.swift
//  CalculatorApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation

struct Calculate {
    var number = 0 {
        didSet {
            print(oldValue)
        }
    }
    var result = 0
    var tmp = 0
    
    mutating func setNumber(_ numeral: String) -> String {
        number = Int(String(number) + numeral) ?? 0
        return String(number)
    }
    
    mutating func pressPlus() -> String {
        if result == 0 {
            result = number
        } else {
            result &+= number
        }
        number = 0
        return String(result)
    }
    
    mutating func pressMinus() -> String {
        if result == 0 {
            result = number
        } else {
            result &-= number
            tmp = result
        }
        number = 0
        return String(result)
    }
    
    mutating func getResult() -> String {
        result &+= number
        number = 0
        return String(result)
    }
    
    
    mutating func pressAc() -> String {
        number = 0
        result = 0
        return "0"
    }
}
