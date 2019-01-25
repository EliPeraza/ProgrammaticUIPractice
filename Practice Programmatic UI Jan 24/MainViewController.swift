//
//  MainViewController.swift
//  Practice Programmatic UI Jan 24
//
//  Created by Elizabeth Peraza  on 1/24/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit


class MainViewController: UIViewController {

  
  let mainView = MainView()
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = .white
      self.viewIfLoaded?.addSubview(mainView)
    }
    



}
