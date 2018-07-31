//
//  ViewController.swift
//  clickCounter
//
//  Created by Ahmed Rezik on 7/30/18.
//  Copyright © 2018 Ahmed Rezik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    var count = 0
    var label: UILabel!
    
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementcount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @objc func toggleBackground(){
      self.view.backgroundColor = UIColor.init(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        
    }
    
    
    override func viewDidLoad() {
        //Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 250, y: 150, width: 100, height: 60)
        button.setTitle("Click Here", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 150, width: 100, height: 60)
        button2.setTitle("Click Here", for: .normal)
        button2.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button2)
        
        
        
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        button.addTarget(self, action: #selector(ViewController.toggleBackground), for: UIControlEvents.touchUpInside)
         button2.addTarget(self, action: #selector(ViewController.toggleBackground), for: UIControlEvents.touchUpInside)
       
        button2.addTarget(self, action: #selector(ViewController.decrementcount), for: UIControlEvents.touchUpInside)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

