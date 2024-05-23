//
//  NextViewController.swift
//  Navigation
//
//  Created by mac on 5/23/24.
//

import UIKit

protocol NextViewControllerDelegate {
    func save(animal: Animal)
}

class NextViewController: UIViewController {
    
    var animal: Animal?
    
    var delegate: NextViewControllerDelegate?
    /*
     let animal: Animal
     
     init(animal: Animal) {
         self.animal = animal
         super.init(nibName: nil, bundle: nil)
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     */

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "다음 화면"
        
        let label = UILabel()
        label.text = animal?.name ?? ""
        if let animal = self.animal, let delegate = self.delegate {
            delegate.save(animal: Animal(name: "강아지"))
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
