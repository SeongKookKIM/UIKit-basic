//
//  ViewController.swift
//  Picker
//
//  Created by mac on 5/21/24.
//

import UIKit

class ViewController: UIViewController{
    
    /* DatePicker
     let datePicker = {
     let picker = UIDatePicker()
     picker.translatesAutoresizingMaskIntoConstraints = false
     
     return picker
     }()
     */
    
    
    
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
        
        let button = UIButton()
        var config = UIButton.Configuration.filled()
        config.title = "Color Picker"
        config.cornerStyle = .capsule
        
        button.configuration = config
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        button.addAction(UIAction { [unowned self] _ in // unowned는 언랩핑 self..?
            let colorPicker = UIColorPickerViewController()
            colorPicker.delegate = self
            colorPicker.supportsAlpha = false
            colorPicker.selectedColor = view.backgroundColor ?? .white
            self.present(colorPicker, animated: true)
        }, for: .touchUpInside)
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        
        /* DatePicker
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
         */
        
        
        
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

extension ViewController: UIColorPickerViewControllerDelegate {
    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        view.backgroundColor = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        dismiss(animated: true)
    }
}
