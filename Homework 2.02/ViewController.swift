//
//  ViewController.swift
//  Homework 2.02
//
//  Created by Iaroslav Beldin on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightsViews: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightsViews.forEach { $0.alpha = 0.3 }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lightsViews.forEach {
            $0.layer.cornerRadius = min(lightsViews[0].bounds.width, lightsViews[0].bounds.height) / 2.0
        }
    }
    
}

