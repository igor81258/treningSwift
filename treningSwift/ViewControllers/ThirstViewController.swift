//
//  ThirstViewController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 05.10.2022.
//

import UIKit

class ThirstViewController: UIViewController {
let prime = Finder()
    let number = prime
    start { [weak self] (number) in
    
    DispatchQueue.main.async { [weak self] in
    self?.lastPrimeLabel = "\(number)"
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
