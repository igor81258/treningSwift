//
//  NewsList.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//

import UIKit
import Alamofire
class NewsList: UIViewController, TableDelegate{
    func showItem(item: Arctileitem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DetailNewsList") as! DetailNewsList
        vc.item = item
        present(vc, animated: true)
        
    }
    let url = "http://newsapi.org/v2/everything?q=keyword&apiKey=ae8566defdc449dcab12727fce58b0e1"
    func getNews(url: String){
        AF.request(url).response {response in
            debugPrint(response)
        }
        
    }


    @IBOutlet var tableNews: UITableView!
    let arctileDatasource = ArticlesDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        getNews(url: "https://newsapi.org//v2/top-headlines?country=ru&apiKey=ae8566defdc449dcab12727fce58b0e1")
        arctileDatasource.delegate = self
        tableNews.dataSource = arctileDatasource
        tableNews.delegate = arctileDatasource
    }
    
}

    

