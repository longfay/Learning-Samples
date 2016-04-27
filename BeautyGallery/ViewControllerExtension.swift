//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 龙菲 on 2016-04-06.
//  Copyright © 2016 Fay. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource{
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return beauties[row]
    }
}