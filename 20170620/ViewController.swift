//
//  ViewController.swift
//  20170620
//
//  Created by iii-user on 2017/6/20.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageCup: UIImageView!
    private let cups:[UIImage] = [
        UIImage(named:"聖杯")!,
        UIImage(named:"聖杯")!,
        UIImage(named:"笑杯")!,
        UIImage(named:"陰杯")!
    ]
   
    
   
    @IBAction func pressBtn(_ sender: Any) {
       imageCup.animationImages = cups
       imageCup.animationDuration = 0.2
       imageCup.animationRepeatCount = 5
       imageCup.startAnimating()
    }
    @IBAction func upBtn(_ sender: Any) {
       let rand = Int(arc4random_uniform(4))
        imageCup.image = cups[rand]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

