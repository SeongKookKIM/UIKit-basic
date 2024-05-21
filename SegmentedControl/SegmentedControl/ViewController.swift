//
//  ViewController.swift
//  SegmentedControl
//
//  Created by mac on 5/21/24.
//

import UIKit

extension UIColor {
    // 배경색에 어울리는 틴트 컬러를 계산하는 함수
    func appropriateTintColor() -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        // 밝기 계산 (RGB to Luminance)
        let luminance = 0.299 * red + 0.587 * green + 0.114 * blue
        
        // 밝기가 0.5 이상이면 어두운 색 텍스트, 아니면 밝은 색 텍스트
        return luminance > 0.5 ? UIColor.black : UIColor.white
    }
}

class ViewController: UIViewController {
    
    /*
     var count = 0
     */
        
    let segmentedControl = UISegmentedControl(items: ["Red", "Green", "blue"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* SegmentedControl
         
         */
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addAction(UIAction { [weak self] _ in
            switch self?.segmentedControl.selectedSegmentIndex {
            case 0:
                self?.view.backgroundColor = .red
            case 1:
                self?.view.backgroundColor = .green
            case 2:
                self?.view.backgroundColor = .blue
            default :
                break
            }
            
            self?.updateColor()
            
        }, for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentTintColor = .red
 
        
        
        view.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        ])
        
        /* Button
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
         */
        
        
    }
    
    func updateColor() {
        let tintColor: UIColor = (self.view.backgroundColor?.appropriateTintColor())!
        let nornalTextAttribute: [NSAttributedString.Key: Any] = [.foregroundColor: tintColor]
        self.segmentedControl.setTitleTextAttributes(nornalTextAttribute, for: .normal)
    }
    
}

