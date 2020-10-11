//
//  MAAlertWithInputFieldsViewController.swift
//  MACustomAlertPopOverCombo
//
//  Created by Mahjabin Alam on 2020/10/11.
//

import UIKit

class MAAlertWithInputFieldsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputField: MAInputTextField!{
        didSet{
            inputField.backgroundColor = UIColor.white
            inputField.cornerRadius = 10.0
            inputField.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        if let inputField = textField as? MAInputTextField{
            inputField.highlightBorder()
        }
        return true
    }
    
}
