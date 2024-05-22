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
        
        /* Gesture
         let rectangle = UIView()
         rectangle.backgroundColor = .yellow
         rectangle.frame = CGRect(x: 100, y: 100, width: 175, height: 125)
         rectangle.isUserInteractionEnabled = true
         
         self.view.addSubview(rectangle)
         
         // let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
         // let gesture = UILongPressGestureRecognizer(target: self, action: #selector(handleGesture))
         
         // gesture.numberOfTapsRequired = 2 // 탭을 두 번해야함
         // gesture.minimumPressDuration = 2.0
         
         rectangle.addGestureRecognizer(gesture)
         */
        
        let imageView = UIImageView(image: UIImage(systemName: "star.fill"))
        imageView.frame = CGRect(x: 120, y: 300, width: 200, height: 200)
        imageView.isUserInteractionEnabled = true
        
        self.view.addSubview(imageView)
        
        let gesture = UIPinchGestureRecognizer(target: self, action: #selector(hanlderImageGesture))
        imageView.addGestureRecognizer(gesture)
    }
    /* UITapGestureRecognizer
     @objc func handleGesture(_ sender: UITapGestureRecognizer) {
         if let view = sender.view {
             view.backgroundColor = (view.backgroundColor == .yellow) ? .red : .yellow
         }
     }
     */
    
    /* UILongPressGestureRecognizer
     @objc func handleGesture(_ sender: UILongPressGestureRecognizer) {
         print(sender.state)
         if let view = sender.view, sender.state == .began {
             view.backgroundColor = (view.backgroundColor == .yellow) ? .red : .yellow
         }
     }
     */

    @objc func hanlderImageGesture(_ sender: UIPinchGestureRecognizer) {
        print(sender.scale)
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
        }
    }


}

