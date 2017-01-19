//
//  ViewController.swift
//  EZUI_APP
//
//  Created by David Richardson on 1/18/17.
//  Copyright © 2017 David Richardson. All rights reserved.
//

import UIKit

class ExampleWithEZUI: UIViewController {
    var Label = UILabel()
    var TextField = UITextField()
    var Button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        TextField = EZUI().createTextField(x: (Int(screenWidth) / 4), y: 50, width: Int(screenWidth) / 2, height: 50, placeholder: "Enter Text To Display", fontSize: 20)
        self.view.addSubview(TextField)
        
        Label = EZUI().createLabel(x: (Int(screenWidth / 4)), y: 200, width: Int(screenWidth) / 2, height: 50, text: "Text Field Text", fontSize: 20)
        self.view.addSubview(Label)
        
        Button = EZUI().createButton(x: (Int(screenWidth / 4)), y: 350, width: Int(screenWidth) / 2, height: 50, title: "Change Text", textColor: UIColor.white, color: UIColor.black, borderWidth: 2, borderColor: UIColor.black.cgColor, cornerRadius: 5)
        Button.addTarget(self, action: #selector(buttonPresser), for: .touchUpInside)
        self.view.addSubview(Button)
    }
    func buttonPresser(sender:UIButton!){
        TextField.resignFirstResponder()
        Label.text = TextField.text
    }
}

