//
//  ViewController.swift
//  Link
//
//  Created by mac on 5/21/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    private lazy var webKit: WKWebView = {
        let webkit = WKWebView(frame: .zero)
        webkit.translatesAutoresizingMaskIntoConstraints = false
 
        
        return webkit
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let linkButton = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        config.title = "Apple"
        
        linkButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        linkButton.configuration = config
        
        linkButton.addAction(UIAction { [weak self] _ in
            guard let url = URL(string: "https://www.apple.com") else {
                return
            }
            self?.openInWebView(url: url)
        }, for: .touchUpInside)
        
        linkButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(linkButton)
        
        self.view.addSubview(webKit)
        webKit.isHidden = true
        
        NSLayoutConstraint.activate([
            linkButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            linkButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            webKit.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            webKit.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            webKit.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            webKit.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }

    func openInWebView(url: URL) {
        let request = URLRequest(url: url)
        webKit.load(request)
        webKit.isHidden = false
    }

}

