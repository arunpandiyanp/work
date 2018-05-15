//
//  PlaceholderProp.swift
//  ShoppingCalculator
//
//  Created by Rk on 12/11/17.
//  Copyright © 2017 Rk. All rights reserved.
//

import UIKit
@IBDesignable
class PlaceholderProp: UITextField {
    override func prepareForInterfaceBuilder() {
        customiZe()
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        customiZe()
        
        
//        if let p = placeholder{
//            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
//            attributedPlaceholder = place
//            textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//        }
    }
    
    func customiZe(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4961487676)
        layer.cornerRadius = 5.0
        
        if placeholder==nil{
            placeholder = "your Budget"
        }
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)])
        //placeholder is implicitly unwrapped
        //foregroundcolor is for the placeholder text
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
    }

}
