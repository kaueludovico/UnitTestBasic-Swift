//
//  ViewController.swift
//  UnitTeste
//
//  Created by Kaue Ludovico on 27/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change Color to Red", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(changeBackgroundColorToRed), for: .touchUpInside)
        return button
    }()
    
    lazy var greenButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change Color to Green", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(changeBackgroundColorToGreen), for: .touchUpInside)
        return button
    }()
    
    lazy var blueButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change Color to Blue", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(changeBackgroundColorToBlue), for: .touchUpInside)
        return button
    }()
    
    var currentColor = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        
    }
    
    private func addSubviews() {
        view.addSubview(redButton)
        view.addSubview(greenButton)
        view.addSubview(blueButton)
        
        activeConstraints()
    }
    
    private func activeConstraints() {
        NSLayoutConstraint.activate([
            redButton.heightAnchor.constraint(equalToConstant: 40),
            redButton.widthAnchor.constraint(equalToConstant: 250),
            
            redButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            redButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            greenButton.heightAnchor.constraint(equalToConstant: 40),
            greenButton.widthAnchor.constraint(equalToConstant: 250),
            
            greenButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 100),
            greenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            blueButton.heightAnchor.constraint(equalToConstant: 40),
            blueButton.widthAnchor.constraint(equalToConstant: 250),
            
            blueButton.topAnchor.constraint(equalTo: greenButton.bottomAnchor, constant: 100),
            blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func changeBackgroundColorToRed() {
        view.backgroundColor = .red
        currentColor = "Red"
        print(currentColor, "<<<<<<<<<< CURRENT COLOR")
    }
    @objc func changeBackgroundColorToGreen() {
        view.backgroundColor = .green
        currentColor = "Green"
        print(currentColor, "<<<<<<<<<< CURRENT COLOR")
    }
    @objc func changeBackgroundColorToBlue() {
        view.backgroundColor = .blue
        currentColor = "Blue"
        print(currentColor, "<<<<<<<<<< CURRENT COLOR")
    }
}

