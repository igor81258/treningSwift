//
//  NewsList.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//

import UIKit

class NewsList: UIViewController {


    @IBOutlet var tableNews: UITableView!
    let arctileDatasource = ArticlesDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableNews.dataSource = arctileDatasource

    }
    
}

    

