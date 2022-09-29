//
//  CustomDataManager.swift
//  treningSwift
//
//  Created by Игорь Степанов on 27.09.2022.
//

import Foundation
import UIKit

class CustomDataManager {
    let textArray = ["One","Two"]
    let colorArray = [UIColor.black, UIColor.yellow]
    func returner() -> CustomControlData?{
        guard let text = textArray.randomElement(), let color = colorArray.randomElement() else { return nil }
        return CustomControlData(text: text, color: color)
        
    }
    

    
}
