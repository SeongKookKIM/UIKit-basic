//
//  ViewController.swift
//  SegmentedControl
//
//  Created by mac on 5/21/24.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
       override func viewDidLoad() {
           super.viewDidLoad()
           
           let button = UIButton(type: .custom)
           
           /*
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.white.cgColor
            */

           
           // var configuration = UIButton.Configuration.plain()
           var config = UIButton.Configuration.filled()
           
           config.cornerStyle = .capsule
           config.title = "Click me"
           config.baseBackgroundColor = .systemBlue
           config.baseForegroundColor = .white
           config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
           
           button.configuration = config
           
           // configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
           // button.configuration = configuration
           // button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
           
           button.setTitle("Click me", for: .normal)
           button.addAction(UIAction { [weak self] _ in
               self?.count += 1
               print("Button wat tapped! \(self?.count ?? 0)")
               
           }, for: .touchUpInside)
           
           button.translatesAutoresizingMaskIntoConstraints = false
           
           view.addSubview(button)
           
           NSLayoutConstraint.activate([
               button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
           ])
       }


}

