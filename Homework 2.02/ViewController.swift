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
        
        lightsSwitchButton.layer.cornerRadius = 12
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lightsViews.forEach {
            $0.layer.cornerRadius = lightsViews[0].frame.width / 2.0
        }
    }
    
    @IBAction func lightsSwitchAction() {
        
        if lightsSwitchButton.currentTitle != "NEXT" {
            lightsSwitchButton.setTitle("NEXT", for: .normal)
        }
        
        if currentLight == lightsViews.count {
            currentLight = 0
        }

        lightsViews.forEach { $0.alpha = 0.3 }
        lightsViews[currentLight].alpha = 1
        currentLight += 1
    }
    
}

