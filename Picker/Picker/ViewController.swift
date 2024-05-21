//
//  ViewController.swift
//  Picker
//
//  Created by mac on 5/21/24.
//

import UIKit

class ViewController: UIViewController{
    
    let datePicker = {
        let picker = UIDatePicker()
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        return picker
    }()
    
    /* Picker
     private lazy var pickerView: UIPickerView = {
     let pickerView = UIPickerView()
     pickerView.delegate = self
     pickerView.dataSource = self
     
     pickerView.translatesAutoresizingMaskIntoConstraints = false
     
     return pickerView
     }()
     
     let options = ["Option1", "Option2", "Option3", "Option4", "Option5",]
     */
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let today = Date()
        var dateComponents = DateComponents()
        dateComponents.year = 1
        let oneYearFromNow = Calendar.current.date(byAdding: dateComponents, to: today)
        
        datePicker.minimumDate = today
        datePicker.maximumDate = oneYearFromNow
        
        datePicker.addAction(UIAction { [weak self] _ in
            print("action: \(self?.datePicker.date.formatted() ?? "N/A")")
        }, for: .valueChanged)
        
        view.addSubview(datePicker)
        
        NSLayoutConstraint.activate([
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        /* Picker
         view.addSubview(pickerView)
         
         NSLayoutConstraint.activate([
         pickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         pickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
         ])
         */
    }
    
    /* Picker
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
     */
    
}

