//
//  ArticleTableViewCell.swift
//  treningSwift
//
//  Created by Игорь Степанов on 19.10.2022.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    var item: Arctileitem? {
        didSet {
                configureCell()
            }
    }
    func configureCell(){
        guard let item = item else {return}
        labelTitle.text = item.title
        labelDetails.text = item.details
        ImageCell.image = item.image
    }
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelDetails: UILabel!
    @IBOutlet var ImageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func setArctileitem(data : Arctileitem){
//   imageView?.image = data.image
//   textLabel?.text = data.title
//   detailTextLabel?.text = data.details
//}
}

