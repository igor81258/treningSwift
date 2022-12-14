//
//  ViewController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.09.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var ChangeButton: UIButton!
    @IBOutlet weak var changeTexrField: UITextField!
    @IBOutlet weak var SlideForChangeProgreess: UISlider!
    @IBOutlet weak var ChangedProgress: UIProgressView!
    @IBOutlet var labelOrientation: UILabel!
    @IBOutlet var SwitchAnimating: UISwitch!
    
    @IBOutlet var ActivityIndicatorView: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SlideActionForChangeProgress(_ sender: UISlider) {
        ChangedProgress.progress = sender.value
        
    }
    @IBAction func changeText(_ sender: Any) {
        Label.text = changeTexrField.text
    }
    
    
    
    @IBAction func SwitchAnimationAction(_ sender: UISwitch) {
        if sender.isOn
        {
            ActivityIndicatorView.startAnimating()
        }
        else
        {
            ActivityIndicatorView.stopAnimating()
        }
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        if UIDevice.current.orientation.isLandscape {
            labelOrientation.text = "Landscape"
        } else {
            labelOrientation.text = "Portret"
        }
       
            
    }
}


