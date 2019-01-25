//
//  DetailedViewController.swift
//  Practice Programmatic UI Jan 24
//
//  Created by Elizabeth Peraza  on 1/24/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

  let detailView =  DetailedView()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.addSubview(detailView)
      self.view.backgroundColor = .white
    }
    
  init(textStringToPass: String){
    super.init(nibName: nil, bundle: nil)
    detailView.detailedLabel.text = textStringToPass
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  

}
