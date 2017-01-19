/*
 
 CREATED BY DAVID RICHARDSON
     AND GITHUB
 
 DOCS FOUND IN README
 
*/

import Foundation
import UIKit
class EZUI {
    func createButton(x: Int, y: Int, width: Int, height: Int, title: String, textColor: UIColor, color: UIColor, borderWidth: Int, borderColor: CGColor, cornerRadius: Int ) -> UIButton{
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.backgroundColor = color
        button.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(width), height: CGFloat(height))
        button.layer.borderWidth = CGFloat(borderWidth)
        button.layer.borderColor = borderColor
        button.layer.cornerRadius = CGFloat(cornerRadius)
        return button
    }
    func createLabel(x: Int, y: Int, width: Int, height: Int, text: String, fontSize: Int) -> UILabel{
        let label = UILabel()
        label.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(width), height: CGFloat(height))
        label.textAlignment = .center
        label.text = text
        label.font = UIFont.systemFont(ofSize: CGFloat(fontSize))
        return label
    }
    func createTextField(x: Int, y: Int, width: Int, height: Int, placeholder: String, fontSize: Int) -> UITextField{
        let TextField = UITextField()
        TextField.frame = CGRect(x: x, y: y, width: width, height: height)
        TextField.placeholder = placeholder
        TextField.font = UIFont.systemFont(ofSize: CGFloat(fontSize))
        TextField.textAlignment = .center
        TextField.borderStyle = UITextBorderStyle.roundedRect
        TextField.autocorrectionType = UITextAutocorrectionType.no
        TextField.keyboardType = UIKeyboardType.default
        TextField.returnKeyType = UIReturnKeyType.done
        TextField.clearButtonMode = UITextFieldViewMode.whileEditing;
        TextField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return TextField
    }
    func createImageView(x: Int, y: Int, width: Int, height: Int, image: UIImage) -> UIImageView{
        let ImageView = UIImageView()
        ImageView.frame = CGRect(x: x, y: y, width: width, height: height)
        ImageView.image = image
        return ImageView
    }
}
