//
//  ViewController.swift
//  Link
//
//  Created by mac on 5/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let linkButton = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        config.title = "Apple"
        
        linkButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        linkButton.configuration = config
        
        linkButton.addAction(UIAction { _ in
            guard let url = URL(string: "https://www.apple.com") else {
                return
            }
            UIApplication.shared.open(url)
        }, for: .touchUpInside)
        
        linkButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(linkButton)
        
        NSLayoutConstraint.activate([
            linkButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            linkButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }


}

