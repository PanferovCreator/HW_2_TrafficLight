//
//  ViewController.swift
//  HW_2_TrafficLight
//
//  Created by Dmitriy Panferov on 31/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        startButton.backgroundColor = .systemBlue
        startButton.setTitle("Start", for: .normal)
    
    }

    @IBAction func startButtonDidPressed() {
        
        if redView.alpha != 1 && yellowView.alpha != 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
            startButton.setTitle("Next", for: .normal)
        } else if redView.alpha == 1 && yellowView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 && redView.alpha != 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
    }
        
        
}

