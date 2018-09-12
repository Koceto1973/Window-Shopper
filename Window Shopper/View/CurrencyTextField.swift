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
    
    // sublabel in label for the dollar sign
    // do not leave than func with empty body, causes problems
    // cancels corner radiuses, so set them with clip to bounds
    override func draw(_ rect:CGRect){
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x:5, y:frame.size.height/2-size/2, width:size, height:size ))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.7054794521)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
        
        currencyLabel.clipsToBounds = true // counter measure due to draw func
    }

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
        
        clipsToBounds = true // counter measure due to draw func
                
        // providing value to the optional property
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}


