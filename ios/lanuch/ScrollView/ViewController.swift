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
//    UIView.animate(withDuration: 1, delay: 0, options: .allowAnimatedContent, animations: { () -> Void in
//      self.introView.alpha = 0
//    }) { (finished) -> Void in
//      self.introView.removeFromSuperview()
//      self.createdMainView()
//    }
    
  
  }
  
  func createdMainView () {
    let dragView = UIImageView(frame: self.view.frame)
    dragView.image = UIImage(named: "imageName")
    dragView.alpha = 0
    view.addSubview(dragView)
    UIView.animate(withDuration: 2, delay: 0, options: .allowAnimatedContent, animations: { () -> Void in
      dragView.alpha = 1
    }) { (finished) -> Void in
      
    }
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
