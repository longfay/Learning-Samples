//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by 龙菲 on 16/3/14.
//  Copyright © 2016年 Fay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()//点空白处时隐藏键盘
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()//确认后隐藏键盘
        
        if let year = Int(yearOfBirth.text!) {
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
        else{
            // notify the user
        }
    }
    
}

