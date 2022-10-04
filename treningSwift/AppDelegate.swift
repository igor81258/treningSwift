//
//  AppDelegate.swift
//  Trening
//
//  Created by Игорь Степанов on 17.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        return true
    }
}
class Finder{
    
    var stop = false
    
    func primeNumber(number : Int) -> Bool{
        guard number >= 2 else {return false}
        for i in 2 ..< number{
            if number % i == 0
            {
                return false
            }
        }
        return true
    }
    
    func start(primeFound: @escaping ((_ number: Int) -> Void)) {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else {
                return
            }
            var i = 2
            while !self.stop {
                if self.primeNumber(number: i) {
                    primeFound(i)
                }
                i += 1
            }
        }
    }
}
