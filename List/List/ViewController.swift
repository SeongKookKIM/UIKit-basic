//
//  ViewController.swift
//  List
//
//  Created by mac on 5/22/24.
//

import UIKit

/* Group table
 struct Animal {
     let name: String
 }

 struct AnimalCategory {
     let category: String
     let animals: [Animal]
 }
 */

class CustomCell: UITableViewCell {
    let animalImageView = UIImageView()
    let nameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        

        contentView.addSubview(animalImageView)
        contentView.addSubview(nameLabel)
        
        setUp()
        

    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUp() {
        animalImageView.contentMode = .scaleAspectFit
        animalImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animalImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            animalImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            animalImageView.widthAnchor.constraint(equalToConstant: 50),
            animalImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leadingAnchor.constraint(equalTo: animalImageView.trailingAnchor, constant: 16),
            nameLabel.centerYAnchor.constraint(equalTo: animalImageView.centerYAnchor)
        ])
    }
    
    func configure(item: Animal) {
        animalImageView.image = item.image
        nameLabel.text = item.name
    }
}

struct Animal {
    let name: String
    let image: UIImage
}



class ViewController: UIViewController, UITableViewDataSource{

    // let items = ["고양이", "강아지", "새", "파충류", "물고기"]
    
    /* Group table
     let categories = [
         AnimalCategory(category: "포유류", animals: [Animal(name: "고양이"), Animal(name: "강아지")]),
         AnimalCategory(category: "파충류", animals: [Animal(name: "거북이"), Animal(name: "도마뱀")]),
         
     ]
     */
    
    let animals = [
        Animal(name: "고양이", image: UIImage(systemName: "cat")!),
        Animal(name: "강아지", image: UIImage(systemName: "dog")!),
        Animal(name: "토끼", image: UIImage(systemName: "hare")!)
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Group table
         let tableView = UITableView(frame: self.view.bounds, style: .grouped)
         tableView.dataSource = self
         
         tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
         self.view.addSubview(tableView)
         */
        

        
        /* SImple Table
         let tableView = UITableView(frame: self.view.bounds)
         tableView.dataSource = self
         tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
         self.view.addSubview(tableView)
         */
        
        let tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.register(CustomCell.self, forCellReuseIdentifier: "cell")

        view.addSubview(tableView)
        
    }
    
    /* Group Table
     func numberOfSections(in tableView: UITableView) -> Int {
         return categories.count
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return categories[section].animals.count
     }
     
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return categories[section].category
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
         var config = cell.defaultContentConfiguration()
         config.text = categories[indexPath.section].animals[indexPath.row].name
         cell.contentConfiguration = config
         
         return cell
     }
     */
    

    
    /* Simple Table
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return items.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
         var config = cell.defaultContentConfiguration()
         config.text = items[indexPath.row]
         cell.contentConfiguration = config
         
         return cell
     }
     */

    // MARK: = UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell

        /* Old한 방식
         var config = cell.defaultContentConfiguration()
         config.text = animals[indexPath.row].name
         config.image = animals[indexPath.row].image
         cell.contentConfiguration = config
         */
        let animal: Animal = animals[indexPath.row]
        cell.configure(item: animal)

        
        return cell
    }


}

