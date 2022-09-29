//
//  File.swift
//  treningSwift
//
//  Created by Игорь Степанов on 26.09.2022.
//

import Foundation
import UIKit
struct CustomControlData {
    let color = UIColor()
    let text: String
    init(text: String, color:UIColor) {
        self.text = text.uppercased()
    }
}

