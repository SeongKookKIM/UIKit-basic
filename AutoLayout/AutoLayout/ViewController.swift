//
//  ViewController.swift
//  AutoLayout
//
//  Created by mac on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         let label = UILabel()
         label.text = "Hello, Awoto Layout"
         label.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(label)
         
         // 제약조건 하나하나 isActive 프로퍼티 설정하는 대신, activate 함수로 한번에 활성화 할 수 있다.
         NSLayoutConstraint.activate([
         label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
         ])
         
         //화면 상단 상태바나 하단 홈 핸들에 겹치지 않는 영역으로 위치시킬때 사용하는 가이드라인 safeAreaLayoutGuide
         label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = false
         label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = false
         label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
         */
        
        
        /*
         let label = UILabel()
         label.backgroundColor = .lightGray
         label.numberOfLines = 0
         label.translatesAutoresizingMaskIntoConstraints = false
         label.text = "This is a"
         view.addSubview(label)
         
         // 최소 및 최대 너비 제약 조건 설정
         let maxWidth: CGFloat = 200
         let maxHeight: CGFloat = 200
         
         // 제약 조건 설정
         NSLayoutConstraint.activate([
         label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         label.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20),
         label.widthAnchor.constraint(lessThanOrEqualToConstant: maxWidth),
         label.heightAnchor.constraint(lessThanOrEqualToConstant: maxHeight),
         label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
         ])
         
         // 텍스트 길이를 동적으로 변경
         DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
         label.text = "This is an even longer text that should definitely exceed the maximum width constraint of the label. The maximum width constraint should keep the label's width within the bounds we set.This is an even longer text that should definitely exceed the maximum width constraint of the label. The maximum width constraint should keep the label's width within the bounds we set."
         }
      */
        
        
         let containerView = UIView()
         containerView.backgroundColor = .lightGray
         containerView.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(containerView)
         
         NSLayoutConstraint.activate([
         containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         containerView.widthAnchor.constraint(equalToConstant: 200),
         containerView.heightAnchor.constraint(equalToConstant: 200),
         ])
         
         let subview1 = UIView()
         subview1.backgroundColor = .red
         subview1.translatesAutoresizingMaskIntoConstraints = false
         containerView.addSubview(subview1)
         
         let subview2 = UIView()
         subview2.backgroundColor = .blue
         subview2.translatesAutoresizingMaskIntoConstraints = false
         containerView.addSubview(subview2)
         
         NSLayoutConstraint.activate([
         subview1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
         subview1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
         subview1.widthAnchor.constraint(equalToConstant: 50),
         subview1.heightAnchor.constraint(equalToConstant: 50),
         
         subview2.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
         subview2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
         subview2.widthAnchor.constraint(equalTo: subview1.widthAnchor, multiplier: 2.0),
         //            subview2.widthAnchor.constraint(equalToConstant: 50),
         subview2.heightAnchor.constraint(equalToConstant: 50),
         ])
        
        
        
    }
}

