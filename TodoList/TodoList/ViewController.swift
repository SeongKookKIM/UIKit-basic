//
//  ViewController.swift
//  TodoList
//
//  Created by mac on 5/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "todoCell")
        
        return tableView
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Add Task", for: .normal)
        button.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        config.imagePadding = 10.0
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TODO"
        
        self.view.addSubview(tableView)
        self.view.addSubview(addButton)
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            // tableView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100)
            
            addButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            addButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        return cell
    }
    

}

