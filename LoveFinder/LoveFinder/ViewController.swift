//
//  ViewController.swift
//  LoveFinder
//
//  Created by 龙菲 on 16/3/18.
//  Copyright © 2016年 Fay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var heightNumber: UISlider!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var hasProperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!//outlet表示属性
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.delegate = self//delegate:代表 self:return the receiver
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func heightChanged(sender: AnyObject) {
        let slider = sender as! UISlider
        var i = Int(slider.value)
       // slider.value = Float(i)
        height.text = "\(i)厘米"
    }//action表示动作
    
    @IBAction func okTapped(sender: AnyObject) {
        let genderText = gender.selectedSegmentIndex == 0 ? "高富帅" : "白富美"
        
        let gregorian = NSCalendar(calendarIdentifier:
        NSCalendarIdentifierGregorian)
        
        let now = NSDate()
        
        let components = gregorian?.components(NSCalendarUnit.Year, fromDate: birthday.date, toDate: now, options: NSCalendarOptions(rawValue:0))
        let age = components!.year
        
        let hasPropertyText = hasProperty.on ? "有房" : "没房"
        
        result.text = "\(name.text!),\(age)岁,\(genderText),身高\(height.text!),\(hasPropertyText),求交往！"
    }
    
    //UITextFiledDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

