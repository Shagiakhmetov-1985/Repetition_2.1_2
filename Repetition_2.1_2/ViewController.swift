//
//  ViewController.swift
//  Repetition_2.1_2
//
//  Created by Marat Shagiakhmetov on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Colors {
        case red, yellow, green
    }
    
    private var color = Colors.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.4
    
    @IBOutlet weak var ViewRed: UIView!
    @IBOutlet weak var ViewYellow: UIView!
    @IBOutlet weak var ViewGreen: UIView!
    
    @IBOutlet weak var ButtonStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewRed.alpha = lightIsOff
        ViewYellow.alpha = lightIsOff
        ViewGreen.alpha = lightIsOff
        
        ViewRed.layer.cornerRadius = ViewRed.frame.width / 2
        ViewYellow.layer.cornerRadius = ViewYellow.frame.width / 2
        ViewGreen.layer.cornerRadius = ViewGreen.frame.width / 2
        
        ButtonStyle.layer.cornerRadius = 10
    }
    
    @IBAction func ButtonStart(_ sender: UIButton) {
        if ButtonStyle.currentTitle == "Start" {
            ButtonStyle.setTitle("Next", for: .normal)
        }
        
        switch color {
        case .red:
            ViewRed.alpha = lightIsOn
            ViewGreen.alpha = lightIsOff
            color = Colors.yellow
        case .yellow:
            ViewYellow.alpha = lightIsOn
            ViewRed.alpha = lightIsOff
            color = Colors.green
        case .green:
            ViewGreen.alpha = lightIsOn
            ViewYellow.alpha = lightIsOff
            color = Colors.red
        }
    }
    
}

