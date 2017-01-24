//
//  ViewController.swift
//  EZUI_IOS_APP
//
//  Created by David Richardson on 1/24/17.
//  Copyright © 2017 David Richardson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var width = CGFloat()
    var label = UILabel()
    var textField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        width = self.view.frame.width
        self.view.backgroundColor = UIColor.cyan
        
        let textFieldArgs = EZTextField(x: Int((width / 2) - 150), y: 50, width: 300, height: 50, placeholder: "Enter Text Here", fontSize: 20)
        textField = EZUI().createTextField(args: textFieldArgs)
        self.view.addSubview(textField)
        
        let labelArgs = EZLabel(x: Int((width / 2) - 150), y: 120, width: 300, height: 50, text: "Text Field Text", fontSize: 20)
        label = EZUI().createLabel(args: labelArgs)
        self.view.addSubview(label)
        
        let buttonArgs = EZButton(x: Int((width / 2) - 75), y: 190, width: 150, height: 50, title: "Change Text", textColor: UIColor.white, color: UIColor.black, borderWidth: 2, borderColor: UIColor.black.cgColor, cornerRadius: 3)
        let button = EZUI().createButton(args: buttonArgs)
        button.addTarget(self, action: #selector(self.button), for: .touchUpInside)
        self.view.addSubview(button)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    func button(sender: UIButton){
        textField.resignFirstResponder()
        label.text = textField.text
    }
}

