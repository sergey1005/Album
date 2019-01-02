//
//  ShakeButton.swift
//  Album
//
//  Created by СЕРГЕЙ on 17/11/2018.
//  Copyright © 2018 СЕРГЕЙ. All rights reserved.
//

import UIKit

class ShakeButton: UIButton {

    func shake() {
        let shakeAnimstion = CABasicAnimation(keyPath: "position")
        shakeAnimstion.fromValue = NSValue(cgPoint: CGPoint(x: center.x - 5, y: center.y))
        shakeAnimstion.toValue = NSValue(cgPoint: CGPoint(x: center.x + 5, y: center.y))
        shakeAnimstion.duration = 0.06
        shakeAnimstion.repeatCount = 7
        shakeAnimstion.autoreverses = true
        
        layer.add(shakeAnimstion, forKey: "position")
    }
    

}
