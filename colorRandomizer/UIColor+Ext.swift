//
//  UIColor+Ext.swift
//  colorRandomizer
//
//  Created by aryan on 26/06/24.
//

import UIKit

extension UIColor{
    
    //        here we are using built in fucntion UIColor to get random color
    //        CGFloat is function to get random color in float basically
    static func genrateRandom() -> UIColor{
        var randomcolor=UIColor.init(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0..<1))
        return randomcolor
    }
}
