//
//  NavigationController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 13.10.2022.
//

import UIKit

class FirstNavigationController: UIViewController {
    
    @IBOutlet var rootButton: UIButton!
    @IBAction func rootButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "second") as? SecondNavigationController else{return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
    class SecondNavigationController: UIViewController{

        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
    }

   

