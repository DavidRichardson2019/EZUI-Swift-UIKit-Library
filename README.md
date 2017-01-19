# EZUI-Swift-UIKit-Library
Library meant to simplify adding UIKit elements programmatically 

Instructions:
    1. Drag EZUI.swift into your xcode project
    2. Use it
    3. Tell everyone how awesome it is

Included in the repository is an example app (EZUI_APP) that you can look at to understand the code.

There are currently only 3 functions

    createButton()
    createLabel()
    createTextField()
    createImageView()

Each function takes different perameters, which should aoutocomplete in xcode and be eaisy to understand, but here is the info just in case.

    createButton(x: Int, y: Int, width: Int, height: Int, title: String, textColor: UIColor, color: UIColor, borderWidth: Int, borderColor: CGColor, cornerRadius: Int )

        X and Y are the position cords for the top right corner of the UIButton.
        Width and Height are the width and height of the UIButton.
        Title is the text for the button.
        TextColor is the color of the text.
        BorderWidth is the width of the border of the button.
        BorderColor is the color of said border.
        CornerRadius is the radius of the corners.

    createLabel(x: Int, y: Int, width: Int, height: Int, text: String, fontSize: Int)

        X and Y are the position cords for the top right corner of the UILabel.
        Width and Height are the width and height of the UILabel.
        Text is the text of the UILabel.
        FontSize is the size of the text of the UILabel.

    createTextField(x: Int, y: Int, width: Int, height: Int, placeholder: String, fontSize: Int)

        X and Y are the position cords for the top right corner of the UITextField.
        Width and Height are the width and height of the UITExtField.
        Placeholder is the text that appears when the UITextField is blank.
        FontSize is the size of the text inside the UITextField.

    createImageView(x: Int, y: Int, width: Int, height: Int, image: UIImage)

        X and Y are the position cords for the top right corner of the UIImageView.
        Width and Height are the width and height of the UIImageView.
        Image is the image that the UIImageView displays.

Each function returns the object it creates (createButton returns a UIButton) so to create a button you would call:
        
        let button = createButton(...)

That way you can further custimize it or call on it in other parts of your program. The functions DO NOT add the object to your view so you do still need to call:

        self.view.addSubview(button)

Feel free to add to this repository. 

TO DO:
        Add more UIKit items.
        Improve docs.
        (possibly) Change arguments to structs
        
