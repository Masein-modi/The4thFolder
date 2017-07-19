//
//  ViewController.swift
//  MiraPills
//
//  Created by Masein Mody on 7/17/17.
//  Copyright © 2017 Masein Mody. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let numbers = ["1" , "2" , "3","4","5","6","7","8"]
    
    @IBOutlet weak var numberPicker: UIPickerView!
    @IBOutlet weak var numberPickerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberPicker.dataSource = self
        numberPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numbers[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numberPickerBtn.setTitle(numbers[row], for: UIControlState())
        numberPicker.isHidden = true
    }
    @IBAction func numberBtnPressed(_ sender: Any) {
        numberPicker.isHidden = false
    }

}

