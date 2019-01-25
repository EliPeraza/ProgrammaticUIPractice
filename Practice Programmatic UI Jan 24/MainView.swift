//
//  MainView.swift
//  Practice Programmatic UI Jan 24
//
//  Created by Elizabeth Peraza  on 1/24/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

/*
 textfield
 button -segue
 */

protocol MainViewDelegate: AnyObject {
 func seguePressed()
}

class MainView: UIView {
  
  weak var delegate: MainViewDelegate? 

  
  lazy var myTextField: UITextField = {
    
    let textField = UITextField()
    textField.backgroundColor = .lightGray
    textField.textAlignment = .center
    textField.textColor = .black
    
    return textField
    
  }()
  
  lazy var mySegueButton: UIButton = {
    
    let button = UIButton()
    button.setTitle("Segue", for: .normal)
    button.backgroundColor = .lightGray
    button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
    
    return button

  }()
  
  @objc func seguePressed() {
    delegate?.seguePressed()
  }
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    addSubview(myTextField)
    addSubview(mySegueButton)
    setConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setConstraints() {
    
    myTextField.translatesAutoresizingMaskIntoConstraints =  false
    myTextField.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
    myTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
    myTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
    myTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true
    
    
    mySegueButton.translatesAutoresizingMaskIntoConstraints = false
    mySegueButton.topAnchor.constraint(equalTo: self.myTextField.bottomAnchor, constant: 33).isActive = true
    mySegueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 33).isActive = true
    mySegueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -33).isActive = true
    
  }
  

}
