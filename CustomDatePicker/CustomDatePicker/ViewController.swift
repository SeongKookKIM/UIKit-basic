//
//  ViewController.swift
//  CustomDatePicker
//
//  Created by mac on 5/22/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private lazy var datePicker: UIPickerView = {
       let picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        
        return picker
    }()
    
    let yaers = [Int](2000...2150)
    let months = [Int](1...12)
    let days = [Int](1...31)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(datePicker)
        
        NSLayoutConstraint.activate([
            datePicker.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            datePicker.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }

    // MARK: - UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return yaers.count
        case 1:
            return months.count
        case 2:
            return days.count
        default:
            return 0
        }
    }

    // MARK: - UIPicekrViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return String(describing: yaers[row])
        case 1:
            return String(describing: months[row])
        case 2:
            return String(describing: days[row])
        default:
            return nil
        }
    }
}

