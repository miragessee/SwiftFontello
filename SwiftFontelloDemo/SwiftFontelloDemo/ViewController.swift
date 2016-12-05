//
//  ViewController.swift
//  SwiftFontelloDemo
//
//  Created by Admin on 05/12/16.
//  Copyright © 2016 miragessee. All rights reserved.
//

import UIKit
import SwiftFontello

class ViewController: UIViewController {

    @IBOutlet weak var barButton: UIBarButtonItem!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewColored: UIImageView!
    @IBOutlet weak var toolbarItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.font = UIFont.swiftFontello(ofSize: 25)
        //label.text = "\u{ed8f}"
        //label.text = String.fontFontelloIcon(name: SwiftFontello.FTLCloudFlashAlt)
        label.text = String.fontFontelloIcon(code: "icon-cloud-flash")
        
        
        button.titleLabel?.font = UIFont.swiftFontello(ofSize: 30)
        button.setTitle(String.fontFontelloIcon(name: .FTLCloudFlashAlt), for: .normal)
        
        let attributes = [NSFontAttributeName: UIFont.swiftFontello(ofSize: 20)] as [String: Any]
        
        barButton.setTitleTextAttributes(attributes, for: .normal)
        barButton.title = String.fontFontelloIcon(name: .FTLCloudFlashAlt)
        
        toolbarItem.setTitleTextAttributes(attributes, for: .normal)
        toolbarItem.title = String.fontFontelloIcon(name: .FTLCloudFlashAlt)
        
        imageView.image = UIImage.fontFontelloIcon(name: SwiftFontello.FTLCloudFlashAlt, textColor: UIColor.black, size: CGSize(width: 100, height: 100))
        
        imageViewColored.image = UIImage.fontFontelloIcon(name: SwiftFontello.FTLCloudFlashAlt, textColor: UIColor.blue, size: CGSize(width: 100, height: 100), backgroundColor: UIColor.red)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

