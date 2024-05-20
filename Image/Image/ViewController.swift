//
//  ViewController.swift
//  Image
//
//  Created by mac on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* 이미지와 아이콘 표시
         
         */
        
        let imageView = UIImageView(image: UIImage(systemName: "hare.fill"))
        imageView.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        imageView.tintColor = .purple
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        
        let flagImageView = UIImageView(image: UIImage(systemName: "flag"))
        flagImageView.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
        flagImageView.clipsToBounds = true
        flagImageView.contentMode = .scaleAspectFill
        self.view.addSubview(flagImageView)
        
        
        /* 도형 표시
         let circleView = UIView()
         circleView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
         circleView.backgroundColor = .yellow
         circleView.layer.cornerRadius = 50
         circleView.layer.borderWidth = 2
         circleView.layer.borderColor = UIColor.black.cgColor
         
         self.view.addSubview(circleView)
         
         let squareView = UIView()
         squareView.frame = CGRect(x: 220, y: 100, width: 100, height: 100)
         squareView.backgroundColor = .blue
         

         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = squareView.bounds
         gradientLayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
         gradientLayer.startPoint = CGPoint(x: 0, y: 0)
         gradientLayer.endPoint = CGPoint(x: 1, y: 1)
         
         squareView.layer.insertSublayer(gradientLayer, at: 0)
         
         
         view.addSubview(squareView)
         */
        

    }


}

