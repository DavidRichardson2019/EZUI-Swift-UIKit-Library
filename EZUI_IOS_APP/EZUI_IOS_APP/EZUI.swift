/*
 
 CREATED BY DAVID RICHARDSON
     AND GITHUB
 
 DOCS FOUND IN README
 
*/

import Foundation
import UIKit
struct EZButton {
    var x: Int, y: Int, width: Int, height: Int, title: String, textColor: UIColor, color: UIColor, borderWidth: Int, borderColor: CGColor, cornerRadius: Int
}
struct EZLabel {
    var x: Int, y: Int, width: Int, height: Int, text: String, fontSize: Int
}
struct EZTextField {
    var x: Int, y: Int, width: Int, height: Int, placeholder: String, fontSize: Int
}
struct EZImageView {
    var x: Int, y: Int, width: Int, height: Int, image: UIImage
}
class EZUI {
    func createButton(args: EZButton) -> UIButton{
        let button = UIButton()
        button.setTitle(args.title, for: .normal)
        button.setTitleColor(args.textColor, for: .normal)
        button.backgroundColor = args.color
        button.frame = CGRect(x: CGFloat(args.x), y: CGFloat(args.y), width: CGFloat(args.width), height: CGFloat(args.height))
        button.layer.borderWidth = CGFloat(args.borderWidth)
        button.layer.borderColor = args.borderColor
        button.layer.cornerRadius = CGFloat(args.cornerRadius)
        return button
    }
    func createLabel(args: EZLabel) -> UILabel{
        let label = UILabel()
        label.frame = CGRect(x: CGFloat(args.x), y: CGFloat(args.y), width: CGFloat(args.width), height: CGFloat(args.height))
        label.textAlignment = .center
        label.text = args.text
        label.font = UIFont.systemFont(ofSize: CGFloat(args.fontSize))
        return label
    }
    func createTextField(args: EZTextField) -> UITextField{
        let TextField = UITextField()
        TextField.frame = CGRect(x: args.x, y: args.y, width: args.width, height: args.height)
        TextField.placeholder = args.placeholder
        TextField.font = UIFont.systemFont(ofSize: CGFloat(args.fontSize))
        TextField.textAlignment = .center
        TextField.borderStyle = UITextBorderStyle.roundedRect
        TextField.autocorrectionType = UITextAutocorrectionType.no
        TextField.keyboardType = UIKeyboardType.default
        TextField.returnKeyType = UIReturnKeyType.done
        TextField.clearButtonMode = UITextFieldViewMode.whileEditing;
        TextField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return TextField
    }
    func createImageView(args: EZImageView) -> UIImageView{
        let ImageView = UIImageView()
        ImageView.frame = CGRect(x: args.x, y: args.y, width: args.width, height: args.height)
        ImageView.image = args.image
        return ImageView
    }
}
