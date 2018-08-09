//
//  ViewController.swift
//  lanuch
//
//  Created by luojie on 2018/8/9.
//  Copyright © 2018年 Facebook. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SwiftIntroViewDelegate {
    var introView: SwiftIntroView!
    override func viewDidLoad() {
        super.viewDidLoad()

      introView = SwiftIntroView(frame: self.view.frame)
      introView.delegate = self
      introView.backgroundColor = UIColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1)
      self.view.addSubview(introView)
      
    }
  // SwiftIntroViewDelegate 方法
  func doneButtonClick() {
    self.navigationController?.popViewController(animated: false)
  
  }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
