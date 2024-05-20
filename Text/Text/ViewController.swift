//
//  ViewController.swift
//  Text
//
//  Created by mac on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Stylized Text"
        /*
         label.textColor = .red
         label.backgroundColor = .yellow
         label.textAlignment = .left
         label.font = UIFont.systemFont(ofSize: 17)
         label.numberOfLines = 0
         label.lineBreakMode = .byWordWrapping
         */

        
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .red
        label.backgroundColor = .yellow
        label.textAlignment = .center
        
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }


}

