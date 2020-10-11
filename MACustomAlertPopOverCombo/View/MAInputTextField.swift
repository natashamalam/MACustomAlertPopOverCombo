//
//  MAInputTextField.swift
//  MACustomAlertPopOverCombo
//
//  Created by Mahjabin Alam on 2020/10/11.
//

import UIKit

class MAInputTextField: UITextField {
    
    var cornerRadius: CGFloat = 0.0{
        didSet{
            setCornerRadius()
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customizeInputField()
    }
    
    func customizeInputField() {
        setCornerRadius()
        addBorder()
    }
    
    func setCornerRadius(){
        self.layer.cornerRadius = cornerRadius
    }
   
    func addBorder(){
        self.clipsToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.systemBlue.cgColor
    }
   
    func highlightBorder(){
        
        let surroundingRect = self.borderRect(forBounds: self.bounds)
        let path = UIBezierPath(roundedRect: surroundingRect, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowPath = path.cgPath
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 1.0
        layer.shadowColor = UIColor.systemBlue.cgColor
        layer.shadowOffset = .zero
        
       
    }


}
