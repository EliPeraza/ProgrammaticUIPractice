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

class MainView: UIView {

  
  lazy var myTextField: UITextField = {
    
    let textField = UITextField()
    textField.backgroundColor = .lightGray
    textField.text = "Write your message here"
    textField.textAlignment = .center
    textField.textColor = .black
    
    return textField
    
  }()
  
  lazy var mySegueButton: UIButton = {
    
    let button = UIButton()
    button.setTitle("Practice!", for: .normal)
    button.backgroundColor = .lightGray
  
    
    return button

  }()
  
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
