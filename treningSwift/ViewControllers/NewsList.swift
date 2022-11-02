//
//  NewsList.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//

import UIKit

class NewsList: UIViewController, TableDelegate{
    func showItem(item: Arctileitem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DetailNewsList") as! DetailNewsList
        vc.item = item
        present(vc, animated: true)
        
    }
    


    @IBOutlet var tableNews: UITableView!
    let arctileDatasource = ArticlesDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arctileDatasource.delegate = self
        tableNews.dataSource = arctileDatasource
        tableNews.delegate = arctileDatasource
    }
    
}

    

