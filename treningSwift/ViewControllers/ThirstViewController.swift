//
//  ThirstViewController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 05.10.2022.
//

import UIKit

class ThirstViewController: UIViewController {
let prime = Finder()
    var lastPrimeLabel = UILabel(frame: CGRect(x: 40, y: 40, width: 100, height: 10))
    let num: () =  Finder().start { number in
        print(number)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lastPrimeLabel)
        prime.start { [weak self] (num) in
            
            DispatchQueue.main.async { [weak self] in
                self?.lastPrimeLabel.text = "\(num)"
            }
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

}
