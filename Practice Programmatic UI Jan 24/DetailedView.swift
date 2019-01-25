//
//  DetailedView.swift
//  Practice Programmatic UI Jan 24
//
//  Created by Elizabeth Peraza  on 1/24/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

//label 

class DetailedView: UIView {

  lazy var detailedLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = .blue
    label.textColor = .white
    label.text = "Default text"
    
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    addSubview(detailedLabel)
    setConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setConstraints() {
    detailedLabel.translatesAutoresizingMaskIntoConstraints = false
    
    detailedLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
    detailedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
    detailedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true
    
  }
  
}
