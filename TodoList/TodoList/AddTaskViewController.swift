//
//  AddTaskViewController.swift
//  TodoList
//
//  Created by mac on 5/24/24.
//

import UIKit

enum DueDateType {
    case today
    case tomorrow
    case none
    case someday(date: Date)
}

class AddTaskViewController: UIViewController {
    var dueDate: DueDateType = .none
    
    private lazy var taskTextField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "할 일을 입력하세요."
        textField.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private lazy var dueDatePicker: UIDatePicker = {
       let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.addTarget(self, action: #selector(dateChanged(_:)), for: .valueChanged)
                return datePicker
        
        return datePicker
    }()
    
    private lazy var dueDateStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let config = UIButton.Configuration.bordered()
        
        let todayButton = UIButton(type: .custom)
        todayButton.setTitle("오늘", for: .normal)
        todayButton.configuration = config
        
        let tomorowButton = UIButton(type: .custom)
        tomorowButton.setTitle("내일", for: .normal)
        tomorowButton.configuration = config
        
        let noDueButton = UIButton(type: .custom)
        noDueButton.setTitle("미지정", for: .normal)
        noDueButton.configuration = config
        
        stackView.addArrangedSubview(todayButton)
        stackView.addArrangedSubview(tomorowButton)
        stackView.addArrangedSubview(noDueButton)
        stackView.addArrangedSubview(dueDatePicker)
        
        
        return stackView
    }()
    
    private lazy var submitButton: UIButton = {
       let button = UIButton()
        button.setTitle("저장", for: .normal)
        // button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let config = UIButton.Configuration.filled()
        button.configuration = config
        

        
        return button
    }()
    
    private func upDateDueButtons() {
        dueDateStackView.subviews.forEach( { element in
            
        })
    }
    
//    private func saveTodo() {
//        guard let date =
//        TodoStore.shared.addTodo(todo: Todo(id: UUID(), task: self?.taskTextField.text, date: dueDate, isDone: false))
//    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.title = "Add Task"
        
        submitButton.addAction(UIAction { [weak self] _ in
//            self?.saveTodo()
            
        }, for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancleAddTask))
        
        view.addSubview(taskTextField)
        view.addSubview(dueDateStackView)
        view.addSubview(submitButton)
        
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            taskTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            taskTextField.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            taskTextField.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20),
            
            dueDateStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            dueDateStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            dueDateStackView.topAnchor.constraint(equalTo: taskTextField.bottomAnchor, constant: 20),
            
            submitButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            submitButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            submitButton.topAnchor.constraint(equalTo: dueDateStackView.bottomAnchor, constant: 20)
            
        ])
        
    }
    

    // 취소버튼
    @objc func cancleAddTask(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @objc private func dateChanged(_ sender: UIDatePicker) {
        // 선택된 날짜를 처리합니다.
        let selectedDate = sender.date
        print("선택된 날짜: \(selectedDate)")
        
        // datePicker를 숨깁니다.
        dueDatePicker.isHidden = true
    }

}
