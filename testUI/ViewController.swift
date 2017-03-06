//
//  ViewController.swift
//  testUI
//
//  Created by JackyShen on 2017/3/6.
//  Copyright © 2017年 JackyShen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result:UILabel!

    var t1:UITextField!
    var t2:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn:UIButton = UIButton(frame: CGRect(x: 50, y: 50, width: 150, height: 100))
        btn.setTitle("Hello", for: .normal)
        btn.backgroundColor = UIColor.green
        btn.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        self.view.addSubview(btn)
        
        t1 = UITextField(frame: CGRect(x: 30, y: 200, width: 150, height: 50))
        t1.backgroundColor = UIColor.blue
        t1.accessibilityActivate()
        t1.accessibilityIdentifier = "text1"
        t1.text = "987"
        self.view.addSubview(t1)
        
        t2 = UITextField(frame: CGRect(x: 150, y: 220, width: 150, height: 50))
        t2.backgroundColor = UIColor.yellow
        self.view.addSubview(t2)
        
        result = UILabel(frame: CGRect(x: 50, y: 250, width: 150, height: 100))
        result.text = "result"
        result.accessibilityIdentifier = "result"
        self.view.addSubview(result)
        
    }
    
    func tapped(sender: UIButton!) {
        print("tapped")
        result.text =  t1.text
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

