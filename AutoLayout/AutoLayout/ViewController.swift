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
        
        
        
        let box = UIView()
        box.backgroundColor = .red
        box.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(box)
        
        NSLayoutConstraint.activate([
            box.widthAnchor.constraint(equalToConstant: 200),
            box.heightAnchor.constraint(equalToConstant: 50),
            
            box.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            box.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // 최소 크기
            box.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
            box.widthAnchor.constraint(greaterThanOrEqualToConstant: 50),
        ])
    }
}

