//
//  CustomView.swift
//  treningSwift
//
//  Created by Игорь Степанов on 29.09.2022.
//

import UIKit

class CustomView: UIView {
    private let textLabel = UILabel()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        customConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func customConstrains(){
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        let horizontalLabelConstraint = NSLayoutConstraint(item: textLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0)
        let verticalLabelConstraint = NSLayoutConstraint(item: textLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        NSLayoutConstraint.activate([horizontalLabelConstraint,verticalLabelConstraint])
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
