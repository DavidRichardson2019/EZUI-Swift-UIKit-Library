//
//  ExampleWithoutEZUI.swift
//  EZUI_APP
//
//  Created by David Richardson on 1/19/17.
//  Copyright © 2017 David Richardson. All rights reserved.
//

import UIKit
class ExampleWithoutEZUI: UIViewController {
    var label = UILabel()
    var TextField = UITextField()
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        TextField.frame = CGRect(x: (Int(screenWidth) / 4), y: 50, width: Int(screenWidth) / 2, height: 50)
        TextField.placeholder = "Enter Text To Display"
        TextField.font = UIFont.systemFont(ofSize: CGFloat(20))
        TextField.textAlignment = .center
        TextField.borderStyle = UITextBorderStyle.roundedRect
        TextField.autocorrectionType = UITextAutocorrectionType.no
        TextField.keyboardType = UIKeyboardType.default
        TextField.returnKeyType = UIReturnKeyType.done
        TextField.clearButtonMode = UITextFieldViewMode.whileEditing;
        TextField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        self.view.addSubview(TextField)
        
        label.frame = CGRect(x: CGFloat((Int(screenWidth / 4))), y: CGFloat(200), width: CGFloat(Int(screenWidth) / 2), height: CGFloat(50))
        label.textAlignment = .center
        label.text = "Text Field Text"
        label.font = UIFont.systemFont(ofSize: CGFloat(20))
        self.view.addSubview(label)
        
        button.setTitle("Change Text", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor =  UIColor.black
        button.frame = CGRect(x: CGFloat((Int(screenWidth / 4))), y: CGFloat(350), width: CGFloat(Int(screenWidth) / 2), height: CGFloat(50))
        button.layer.borderWidth = CGFloat(2)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = CGFloat(5)
        button.addTarget(self, action: #selector(buttonPresser), for: .touchUpInside)
        self.view.addSubview(button)
    }
    func buttonPresser(sender:UIButton!){
        TextField.resignFirstResponder()
        label.text = TextField.text
    }
}
