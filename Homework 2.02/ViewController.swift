//
//  ViewController.swift
//  Homework 2.02
//
//  Created by Iaroslav Beldin on 18.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var lightsViews: [UIView]!
    @IBOutlet var lightsSwitchButton: UIButton!
    
    private var currentLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightsViews.forEach { $0.alpha = 0.3 }
        lightsSwitchButton.layer.cornerRadius = 12
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lightsViews.forEach {
            $0.layer.cornerRadius = min(lightsViews[0].bounds.width, lightsViews[0].bounds.height) / 2.0
        }
    }
    
    @IBAction func lightsSwitchAction() {
        
        if currentLight == lightsViews.count {
            currentLight = 0
        }
        
        lightsSwitchButton.setTitle("NEXT", for: .normal)
        lightsViews.forEach { $0.alpha = 0.3 }
        lightsViews[currentLight].alpha = 1
        currentLight += 1
    }
    
}

