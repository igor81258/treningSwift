//
//  SecondViewController.swift
//  treningSwift
//
//  Created by Игорь Степанов on 26.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var customView: CustomView!
    private let manager = CustomDataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let manag = manager.returner() else{return}
        customView.setData(data: manag)

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
