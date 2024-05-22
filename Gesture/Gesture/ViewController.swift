//
//  ViewController.swift
//  Gesture
//
//  Created by mac on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rectangle = UIView()
        rectangle.backgroundColor = .yellow
        rectangle.frame = CGRect(x: 100, y: 100, width: 175, height: 125)
        rectangle.isUserInteractionEnabled = true
        
        self.view.addSubview(rectangle)
        
        // let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(handleGesture))
        
        // gesture.numberOfTapsRequired = 2 // 탭을 두 번해야함
        gesture.minimumPressDuration = 2.0
        
        rectangle.addGestureRecognizer(gesture)
        
        
    }
    /* UITapGestureRecognizer
     @objc func handleGesture(_ sender: UITapGestureRecognizer) {
         if let view = sender.view {
             view.backgroundColor = (view.backgroundColor == .yellow) ? .red : .yellow
         }
     }
     */

    @objc func handleGesture(_ sender: UILongPressGestureRecognizer) {
        print(sender.state)
        if let view = sender.view, sender.state == .began {
            view.backgroundColor = (view.backgroundColor == .yellow) ? .red : .yellow
        }
    }

}
