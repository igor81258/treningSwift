//
//  ThirstViewController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 05.10.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var view2: UIView!
    let startButton = UIButton()
    let stopButton = UIButton()
    let prime = Finder()
    let lastPrimeLabel = UILabel()
    let num: () =  Finder().start { number in
        print(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingLastPrimeLabel()
        createStartButton()
        createStopButton()
        startButton.addTarget(self, action: #selector(buttonStart), for: <#T##UIControl.Event#>)
        prime.start { [weak self] (num) in
            DispatchQueue.main.async { [weak self] in
                self?.lastPrimeLabel.text = "\(num)"
            }
        }
        
    }
    @objc func buttonStart (sender: UIButton){
        
    }
        func createStopButton(){
            
            view.addSubview(stopButton)
            stopButton.configuration = createConfig2()
            stopButton.translatesAutoresizingMaskIntoConstraints = false
            let verticalSpacingConstraints = NSLayoutConstraint(item: stopButton, attribute: .top, relatedBy: .equal, toItem: lastPrimeLabel, attribute: .bottom, multiplier: 1, constant: 20)
            let rightConstraint = NSLayoutConstraint(item: stopButton, attribute: .trailing, relatedBy: .equal, toItem: view2, attribute: .trailing, multiplier: 1, constant: -20)
            let heightconstraint = NSLayoutConstraint(item: stopButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 70)
            let horizontalSpacing = NSLayoutConstraint(item: stopButton, attribute: .leading, relatedBy: .equal, toItem: startButton, attribute: .trailing, multiplier: 1, constant: 20)
            let buttonsWidthsConstrains = NSLayoutConstraint(item: stopButton, attribute: .width, relatedBy: .equal, toItem: startButton, attribute: .width, multiplier: 1, constant: 0)
            
            NSLayoutConstraint.activate([verticalSpacingConstraints,rightConstraint, heightconstraint,horizontalSpacing,buttonsWidthsConstrains])
            
        }
        
        func createStartButton(){
            
            view.addSubview(startButton)
            startButton.configuration = createConfig()
            startButton.translatesAutoresizingMaskIntoConstraints = false
            let verticalSpacingConstraints = NSLayoutConstraint(item: startButton, attribute: .top, relatedBy: .equal, toItem: lastPrimeLabel, attribute: .bottom, multiplier: 1, constant: 20)
            let leftConstraint = NSLayoutConstraint(item: startButton, attribute: .leading, relatedBy: .equal, toItem: view2, attribute: .leading, multiplier: 1, constant: 20)
            let heightconstraint = NSLayoutConstraint(item: startButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 70)
            NSLayoutConstraint.activate([verticalSpacingConstraints,leftConstraint, heightconstraint])
        }
        func createConfig() -> UIButton.Configuration{
            var config = UIButton.Configuration.filled()
            config.title = "Start!"
            return config
        }
        func createConfig2() -> UIButton.Configuration{
            var config = UIButton.Configuration.filled()
            config.title = "Stop!"
            return config
        }
        func settingLastPrimeLabel(){
            view.addSubview(lastPrimeLabel)
            lastPrimeLabel.translatesAutoresizingMaskIntoConstraints = false
            lastPrimeLabel.textAlignment = .center
            let leftConstrains = NSLayoutConstraint(item: lastPrimeLabel, attribute: .leading, relatedBy: .equal, toItem: view2, attribute: .leading, multiplier: 1, constant: 20)
            let rightConstrains = NSLayoutConstraint(item: lastPrimeLabel, attribute: .trailing, relatedBy: .equal, toItem: view2, attribute: .trailing, multiplier: 1, constant: 20)
            let topConstrains = NSLayoutConstraint(item: lastPrimeLabel, attribute: .top, relatedBy: .equal, toItem: view2, attribute: .top, multiplier: 1, constant: 20)
            let heightConstrains = NSLayoutConstraint(item: lastPrimeLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
            NSLayoutConstraint.activate([leftConstrains, rightConstrains,topConstrains,heightConstrains])
            
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

