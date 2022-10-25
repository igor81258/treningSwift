//
//  ArticlesDataSource.swift
//  treningSwift
//
//  Created by Игорь Степанов on 20.10.2022.
//
import UIKit
import Foundation

class ArticlesDataSource: NSObject, UITableViewDataSource{
    let idCell = "myCell"
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! ArticleTableViewCell
        let returnerSettings = getItem()
        cell.labelTitle.text = returnerSettings.title
        cell.lableDetails.text = returnerSettings.details
        
//        if cell == nil{
//            cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
//        }
//        let returnerSettings = getItem()
//        cell!.textLabel?.text = returnerSettings.title
//        cell!.imageView?.image = returnerSettings.image
//        cell!.detailTextLabel?.text = returnerSettings.details
        return cell
    }
    func getItem() -> Arctileitem{
        let imageArray = [UIImage(named: "bmwM")!]
            let titleArray = ["1","2","3"]
            let detailsArray = [ "one","two","three"]
        return Arctileitem(image: imageArray.randomElement()! , title: titleArray.randomElement()!, details: detailsArray.randomElement()!)
        }
         

}
