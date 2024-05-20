//
//  ViewController.swift
//  StackView
//
//  Created by mac on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    let toggleSwitch = UISwitch()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         let stackView = UIStackView()
         stackView.axis = .vertical
         stackView.spacing = 10
         stackView.alignment = .center
         stackView.distribution = .fillEqually // 배치
         
         let topLabel = UILabel()
         topLabel.text = "위"
         topLabel.textAlignment = .center
         topLabel.backgroundColor = .lightGray
         
         let leftLabel = UILabel()
         leftLabel.text = "왼쪽"
         leftLabel.textAlignment = .center
         leftLabel.backgroundColor = .lightGray
         
         let rigthLabel = UILabel()
         rigthLabel.text = "오른쪽"
         rigthLabel.textAlignment = .center
         rigthLabel.backgroundColor = .lightGray
         
         let hStackView = UIStackView(arrangedSubviews: [leftLabel, rigthLabel])
         hStackView.axis = .horizontal
         hStackView.spacing = 10
         
         stackView.addArrangedSubview(topLabel)
         stackView.addArrangedSubview(hStackView)
         
         view.addSubview(stackView)
         
         stackView.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
         stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         stackView.widthAnchor.constraint(equalToConstant: 200),
         stackView.heightAnchor.constraint(equalToConstant: 100)
         ])
         */
        
        /* 기존 addTarget
         label.text = "Switch is OFF"
         label.textAlignment = .center
         
         toggleSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
         
         let stackView = UIStackView(arrangedSubviews: [label, toggleSwitch])
         stackView.axis = .vertical
         stackView.spacing = 10
         stackView.alignment = .center
         
         view.addSubview(stackView)
         
         stackView.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
         stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         ])
         */
        
        /* addAction
         toggleSwitch.addAction(
         UIAction(handler: myToggle(action:)),
         for: .valueChanged
         )
         func myToggle(action: UIAction) {
         guard let toggleSwitch = action.sender as? UISwitch else {
         return
         }
         if toggleSwitch.isOn {
         label.text = "On"
         } else {
         label.text = "Off"
         }
         }
         
         // or
         toggleSwitch.addAction(
         UIAction { action in
         guard let toggleSwitch = action.sender as? UISwitch else {
         return
         }
         if toggleSwitch.isOn {
         self.label.text = "On"
         } else {
         self.label.text = "Off"
         }
         },
         for: .valueChanged
         )
         */
        
        label.text = "Switch is OFF"
        label.textAlignment = .center
        
        // weak으로 약한참조를 할 수 있지만 unowned self를 사용하면 옵셔널을 사용하지 않으면서 강함 참조를 함
        toggleSwitch.addAction(UIAction { [weak self] _ in
            print("valueChanged")
            if let isOn = self?.toggleSwitch.isOn, isOn {
                self?.label.text = "Switch is ON"
            } else {
                self?.label.text = "Switch is OFF"
            }
            
        }, for: .valueChanged)
        
        let stackView = UIStackView(arrangedSubviews: [label, toggleSwitch])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
    }
    
    /*
     @objc func switchChanged(_ sender: UISwitch) {
     if sender.isOn {
     label.text = "Switch is ON"
     } else {
     label.text = "Switch is OFF"
     }
     }
     */
    
}

