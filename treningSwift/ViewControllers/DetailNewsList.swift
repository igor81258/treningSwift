//
//  DetailNewsList.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//

import UIKit

class DetailNewsList: UIViewController {
    var item: Arctileitem?
    @IBOutlet var titleNews: UILabel!
    @IBOutlet var textNews: UITextView!
    @IBOutlet var imageNews: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let item = item else {return}
        titleNews.text = item.title
        textNews.text = item.details
        imageNews.image = item.image
        
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
