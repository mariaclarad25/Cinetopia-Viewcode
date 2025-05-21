//
//  ViewController.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 21/05/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, World!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .background
        addSubviews()
        setupConstrains()
    }
    
    private func addSubviews(){
        view.addSubview(label)
    }
    private func setupConstrains(){
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32)
            //label.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            //label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            //label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}

