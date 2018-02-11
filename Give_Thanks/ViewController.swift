//
//  ViewController.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/10/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit
import RSKPlaceholderTextView

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var username: UITextView!
    @IBOutlet weak var password: UITextView!
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    let lineColor = UIColor(red:0.12, green:0.23, blue:0.35, alpha:1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = blurImage(image: UIImage(named: "giveThanks")!)
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.username.setBottomLine(borderColor: lineColor)
//        self.password.setBottomLine(borderColor: lineColor)
        
        
        (username as! RSKPlaceholderTextView).placeholder = "example@domain.com"
        (password as! RSKPlaceholderTextView).placeholder = "Keep it Strong"
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        self.view.addGestureRecognizer(tap)
        
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        username.endEditing(true)
    }
    
    func getLineView(view: UIView) -> UIView {
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(view.frame.height) - height, width: Double(view.frame.width), height: height)
        
        borderLine.backgroundColor = lineColor
        return borderLine
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func blurImage(image:UIImage) -> UIImage? {
        let context = CIContext(options: nil)
        let inputImage = CIImage(image: image)
        let originalOrientation = image.imageOrientation
        let originalScale = image.scale
        
        let filter = CIFilter(name: "CIGaussianBlur")
        filter?.setValue(inputImage, forKey: kCIInputImageKey)
        filter?.setValue(8.0, forKey: kCIInputRadiusKey)
        let outputImage = filter?.outputImage
        
        var cgImage:CGImage?
        
        if let asd = outputImage
        {
            cgImage = context.createCGImage(asd, from: (inputImage?.extent)!)
        }
        
        if let cgImageA = cgImage
        {
            return UIImage(cgImage: cgImageA, scale: originalScale, orientation: originalOrientation)
        }
        
        return nil
    }


    

}


extension UITextField {
    
    func setBottomLine(borderColor: UIColor) {
        
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = UIColor.clear
        
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(self.frame.width), height: height)
        
        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
    }
    
    
    
}

