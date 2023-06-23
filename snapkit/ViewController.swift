//
//  ViewController.swift
//  snapkit
//
//  Created by Akerke on 23.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your name"
        return textField
    }()
    
    let myButton: UIButton = {
       let button = UIButton()
        button.setTitle("Greet Me!", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
}


private extension ViewController {
    func setupScene() {
        title = "jsfbffs"
        view.backgroundColor = .systemBackground
        view.addSubview(myButton)
        view.addSubview(nameTextField)
    }
    
    @objc func buttonTapped() {
        let viewController = SecondViewControler()
        viewController.name = nameTextField.text ?? ""
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func makeConstraints() {
        nameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-50)
            
        }
        myButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(50)
        }
    }
}





