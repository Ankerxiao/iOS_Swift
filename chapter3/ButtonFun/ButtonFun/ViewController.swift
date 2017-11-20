//
//  ViewController.swift
//  ButtonFun
//
//  Created by Xiao on 2017/11/20.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)
        let text = "\(title ?? "无") button pressed"
        let styledText = NSMutableAttributedString(string:text)
        let attributes = [
            NSAttributedStringKey.font:UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize),
            NSAttributedStringKey.foregroundColor:UIColor.red,
            NSAttributedStringKey.backgroundColor:UIColor.cyan
        ]
        let nameRange = (text as NSString).range(of: title!)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
    


}

