//
//  ViewController.swift
//  Text
//
//  Created by mac on 5/20/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         let label = UILabel()
         label.text = "Stylized Text"
         */
        
        /* NSMutableAttributedString 텍스트 꾸미기
         let attributedString = NSMutableAttributedString(string: "Hello, World")
         attributedString.addAttribute(.font, value: UIFont.italicSystemFont(ofSize: 20), range: NSRange(location: 0, length: 5))
         attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: NSRange(location: 7, length: 5))
         attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: 12))
         
         let label = UILabel()
         label.attributedText = attributedString
         
         label.translatesAutoresizingMaskIntoConstraints = false
         
         view.addSubview(label)
         
         NSLayoutConstraint.activate([
             label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
         ])
         */
        
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false

        let htmlString = """
        <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                body {
                    font-family: -apple-system, Helvetica, Arial, sans-serif;
                    font-size: 2rem;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }
                .italic {
                    font-style: italic;
                }
                .blue {
                    color: blue;
                }
                .underline {
                    text-decoration: underline;
                }
                
            </style>
        </head>
        <body>
            <span class="italic underline">Hello,&nbsp;</span><span class="blue underline">World</span>
        </body>
        </html>
        """

        webView.loadHTMLString(htmlString, baseURL: nil)

        view.addSubview(webView)

        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        
        /*
         label.textColor = .red
         label.backgroundColor = .yellow
         label.textAlignment = .left
         label.font = UIFont.systemFont(ofSize: 17)
         label.numberOfLines = 0
         label.lineBreakMode = .byWordWrapping
         */
        
        /*
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
         */
        
    }
    
    
}

