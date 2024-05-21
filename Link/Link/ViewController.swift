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
        
        let menuButton = UIButton(type: .system)
        var conf = UIButton.Configuration.filled()
        conf.title = "Options"
        menuButton.configuration = conf
        menuButton.addAction(UIAction { [weak self] _ in
            self?.showMenu(sourceView: menuButton)
        }, for: .touchUpInside)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuButton)
        NSLayoutConstraint.activate([
            menuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
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
    
    func showMenu(sourceView: UIView) {
        let alert = UIAlertController(title: "Options", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Open", style: .default) { _ in
            self.showMessage("Open chosen")
        })
        alert.addAction(UIAlertAction(title: "Find", style: .default, handler: { _ in self.showMessage("Find chosen") }))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { _ in self.showMessage("Delete chosen") }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Submenu", style: .default, handler: { [weak self] _ in
            self?.showSubmenu(sourceView: sourceView)
        }))
        
        
        if let popoverController = alert.popoverPresentationController {
            popoverController.sourceView = sourceView
            popoverController.sourceRect = sourceView.bounds
            popoverController.permittedArrowDirections = [.down]
        }
        
        present(alert, animated: true)
    }
    
    func showSubmenu(sourceView: UIView) {
        let submenuAlert = UIAlertController(title: "Submenu", message: nil, preferredStyle: .actionSheet)
        submenuAlert.addAction(UIAlertAction(title: "Copy Format", style: .default, handler: { _ in self.showMessage("Copy format chosen") }))
        submenuAlert.addAction(UIAlertAction(title: "Paste Format", style: .default, handler: { _ in self.showMessage("Paste format chosen") }))
        submenuAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // 아이패드에서 팝오버 형태로 서브메뉴 표시
        if let popoverController = submenuAlert.popoverPresentationController {
            popoverController.sourceView = sourceView
            popoverController.sourceRect = sourceView.bounds
            popoverController.permittedArrowDirections = [.up]
        }
        
        present(submenuAlert, animated: true, completion: nil)
    }
    
    func showMessage(_ message: String) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    /* WebView
     func openInWebView(url: URL) {
     let request = URLRequest(url: url)
     webKit.load(request)
     webKit.isHidden = false
     }
     */
    
    
}

