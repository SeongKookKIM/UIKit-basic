//
//  ViewController.swift
//  Gesture
//
//  Created by mac on 5/22/24.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Tap Gesture
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
        
        /* UIPinchGestureRecognizer 확대 / 축소
         let imageView = UIImageView(image: UIImage(systemName: "star.fill"))
         imageView.frame = CGRect(x: 120, y: 300, width: 200, height: 200)
         imageView.isUserInteractionEnabled = true
         
         self.view.addSubview(imageView)
         
         let gesture = UIPinchGestureRecognizer(target: self, action: #selector(hanlderImageGesture))
         imageView.addGestureRecognizer(gesture)
         */
        
        
        
        /* rotaiton Gesture
         let imageView = UIImageView(image: UIImage(systemName: "star.fill"))
         imageView.frame = CGRect(x: self.view.bounds.midX - 100, y: self.view.bounds.midY - 100, width: 200, height: 200)
         imageView.isUserInteractionEnabled = true
         
         self.view.addSubview(imageView)
         
         let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(hanlderRotationGesture))
         imageView.addGestureRecognizer(rotationGesture)
         */
        
        
        // 다중 제스처
        let imageView = UIImageView(image: UIImage(systemName: "star.fill"))
        imageView.frame = CGRect(x: self.view.bounds.midX - 100, y: self.view.bounds.midY - 100, width: 200, height: 200)
        imageView.isUserInteractionEnabled = true
        
        self.view.addSubview(imageView)
        
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(hanlderRotationGesture))
        imageView.addGestureRecognizer(rotationGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(hanlderPanGesture))
        imageView.addGestureRecognizer(panGesture)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(hanlderPinchGesture))
        imageView.addGestureRecognizer(pinchGesture)
        
        rotationGesture.delegate = self
        panGesture.delegate = self
        pinchGesture.delegate = self
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
    
    /* UIPinchGestureRecognizer 확대 / 축소
     @objc func hanlderImageGesture(_ sender: UIPinchGestureRecognizer) {
     print(sender.scale)
     if let view = sender.view {
     view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
     }
     }
     */
    
    // 단일 제스처 허용
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer is UIPanGestureRecognizer {
            return true
        } else {
            return true
        }
    }
    
    // 복합 제스처 허용 여부
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    @objc func hanlderRotationGesture(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
    @objc func hanlderPanGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            sender.setTranslation(.zero, in: view)
        }
    }
    @objc func hanlderPinchGesture(_ sender: UIPinchGestureRecognizer) {
        print(sender.scale)
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
        }
    }
    
}

