//
//  ViewController.swift
//  Link
//
//  Created by mac on 5/21/24.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {
    
    /* WebView
     private lazy var webKit: WKWebView = {
     let webkit = WKWebView(frame: .zero)
     webkit.translatesAutoresizingMaskIntoConstraints = false
     
     
     return webkit
     }()
     
     private lazy var closeBtn: UIButton = {
     let button = UIButton(type: .close)
     button.translatesAutoresizingMaskIntoConstraints = false
     button.addAction(UIAction { [weak self] _ in
     self?.webKit.isHidden = true
     }, for: .touchUpInside)
     
     return button
     }()
     */
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* WebView
         let linkButton = UIButton(type: .system)
         var config = UIButton.Configuration.filled()
         config.title = "Apple"
         
         linkButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
         linkButton.configuration = config
         
         linkButton.addAction(UIAction { [weak self] _ in
         guard let url = URL(string: "https://www.apple.com") else {
         return
         }
         // UIApplication.shared.open(url)
         
         /*
          // 다양한 웹뷰 생성 with 사파리..
          let safariViewController = SFSafariViewController(url: url)
          safariViewController.modalPresentationStyle = .pageSheet
          self?.present(safariViewController, animated: true)
          */
         
         
         self?.openInWebView(url: url)
         }, for: .touchUpInside)
         
         linkButton.translatesAutoresizingMaskIntoConstraints = false
         self.view.addSubview(linkButton)
         webKit.addSubview(closeBtn)
         self.view.addSubview(webKit)
         
         webKit.isHidden = true
         
         NSLayoutConstraint.activate([
         linkButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
         linkButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
         
         webKit.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
         webKit.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
         webKit.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30),
         webKit.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
         
         closeBtn.topAnchor.constraint(equalTo: webKit.topAnchor, constant: -30),
         closeBtn.trailingAnchor.constraint(equalTo: webKit.trailingAnchor, constant: -10),
         ])
         */
        
        
        
    }
    
    /* WebView
     func openInWebView(url: URL) {
     let request = URLRequest(url: url)
     webKit.load(request)
     webKit.isHidden = false
     }
     */
    
    
}

