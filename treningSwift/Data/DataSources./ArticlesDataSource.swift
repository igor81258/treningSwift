//
//  ArticlesDataSource.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//
import UIKit
import Foundation

class ArticlesDataSource: NSObject, UITableViewDataSource, UITableViewDelegate{
    let idCell = "myCell"
    var delegate: TableDelegate?
    var array: [Arctileitem] {return [getItem(),getItem(),getItem()]}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! ArticleTableViewCell
//        let returnerSettings = getItem()
//        cell.labelTitle.text = returnerSettings.title
//        cell.lableDetails.text = returnerSettings.details
        cell.item = array[indexPath.row]
        return cell
    }
    func getItem() -> Arctileitem{
        let imageArray = [UIImage(named: "bmwM")!]
        let titleArray = ["1","2","3"]
        let detailsArray = [ "one","two","three"]
        return Arctileitem(image: imageArray.randomElement()! , title: titleArray.randomElement()!, details: detailsArray.randomElement()!)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let delegate = delegate else{return}
        delegate.showItem(item: array[indexPath.row])
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToDetails"{
//
//
//        }
    }
protocol TableDelegate {
    func showItem(item: Arctileitem)
}

