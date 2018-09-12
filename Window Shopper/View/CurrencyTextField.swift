//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by К.К. on 12.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    // app IB time
    override func prepareForInterfaceBuilder() {
       customizeView()
    }
    
    // app runtime
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
      
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2534246575)  // equivalent to uicolor.white, with amended opacity value
        layer.cornerRadius = 5.0
        textAlignment = .center
                
        // providing value to the optional property
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}


