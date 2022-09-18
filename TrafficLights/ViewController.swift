//
//  ViewController.swift
//  TrafficLights
//
//  Created by Oleg Vysotskiy on 18/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSectionView: UIView!
    @IBOutlet var yellowSectionView: UIView!
    @IBOutlet var greenSectionView: UIView!
    @IBOutlet var startButtonView: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButtonView.layer.cornerRadius = 5
        
        redSectionView.layer.cornerRadius = 70
        yellowSectionView.layer.cornerRadius = 70
        greenSectionView.layer.cornerRadius = 70
        
        redSectionView.alpha = 0.3
        yellowSectionView.alpha = 0.3
        greenSectionView.alpha = 0.3
        
    }
    @IBAction func startButtonDidPress() {
        startButtonView.setTitle("Next", for: .normal)
        
        if redSectionView.alpha != 1 && yellowSectionView.alpha != 1 {
            redSectionView.alpha = 1
            greenSectionView.alpha = 0.3
        } else if redSectionView.alpha == 1 {
            yellowSectionView.alpha = 1
            redSectionView.alpha = 0.3
        } else if yellowSectionView.alpha == 1 {
            yellowSectionView.alpha = 0.3
            greenSectionView.alpha = 1
        }
    }
    

}

