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
   @IBOutlet var label: UILabel!
    
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementcount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func toggleBackground(){
      self.view.backgroundColor = UIColor.init(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        
    }
    
    
    override func viewDidLoad() {
        
        label.text = "0"
     super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

