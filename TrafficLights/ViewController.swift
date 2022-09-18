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
        redSectionView.layer.cornerRadius = 70
        yellowSectionView.layer.cornerRadius = 70
        greenSectionView.layer.cornerRadius = 70
        
        redSectionView.alpha = 0.3
        yellowSectionView.alpha = 0.3
        greenSectionView.alpha = 0.3
        
    }
    @IBAction func startButtonDidPress() {
        
        if redSectionView.alpha == 0.2 && yellowSectionView.alpha == 0.2 && greenSectionView.alpha == 0.2 {
            redSectionView.alpha = 1
        }
    }
    

}

