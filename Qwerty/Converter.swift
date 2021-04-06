//
//  Converter.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 07/04/21.
//

import Foundation

class Converter {
    
    static func convertArrayToString(array: [String]) -> String {
        var merged = ""
        let arrayLen = array.count
        
        if (arrayLen != 1) {
            merged = array.joined(separator: ", ")
            return merged
        }
        return array[0]
    }
}
