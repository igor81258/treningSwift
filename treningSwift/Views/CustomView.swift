//
//  CustomView.swift
//  treningSwift
//
//  Created by Игорь Степанов on 29.09.2022.
//

import UIKit

@IBDesignable class CustomView: UIView {
    let textLabel = UILabel(frame: CGRect())
  
    override init (frame: CGRect) {
        super.init(frame: frame)
        customConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customConstrains()
    }
    
    func customConstrains(){
        addSubview(textLabel)
        textLabel.text = "this is label"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.layer.cornerRadius = 50
        let horizontalLabelConstraint = NSLayoutConstraint(item: textLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0)
        let verticalLabelConstraint = NSLayoutConstraint(item: textLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        NSLayoutConstraint.activate([horizontalLabelConstraint,verticalLabelConstraint])
        textLabel.backgroundColor = .clear
    }
    
    func setData(data: CustomControlData) {
        textLabel.backgroundColor = data.color
        textLabel.text = data.text
        
        
    }
    
}

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


