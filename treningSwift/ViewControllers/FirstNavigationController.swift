//
//  NavigationController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 13.10.2022.
//

import UIKit

class FirstNavigationController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var rootButton: UIButton!
    @IBAction func rootButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "second") as? SecondNavigationController else{return}
        navigationController?.pushViewController(vc, animated: true)
        vc.text1 = textField.text!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController : SecondNavigationController = segue.destination as! SecondNavigationController
        destViewController.text1 = (textField.text)!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
class SecondNavigationController: UIViewController{
    @IBOutlet var getLabel: UILabel!
    @IBOutlet var Alert: UIBarButtonItem!
    @IBAction func AlertMessange(_ sender: Any) {
        let AlertController = UIAlertController(title: "Warning", message: "This is AlertMessage", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            return
        }
        AlertController.addAction(action)
        self.present(AlertController, animated: true)
    }
    var text1 = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        getLabel.text = text1
    }
    
    
}



