//
//  ViewController.swift
//  Picker
//
//  Created by mac on 5/21/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private lazy var pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        return pickerView
    }()

    let options = ["Option1", "Option2", "Option3", "Option4", "Option5",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pickerView)
        
        NSLayoutConstraint.activate([
            pickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    // MARK: - UIPickerViewDataSource
       func numberOfComponents(in pickerView: UIPickerView) -> Int {
           1 // pickerView 갯수
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           options.count // pickerView Options수
       }
       
       
       // MARK: - UIPickerViewDelegate
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return options[row]
       }
       
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           print("selected row: \(row)")
       }

}

