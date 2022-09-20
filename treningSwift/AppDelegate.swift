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
    func findSimpleNumber(goal: Int) -> [Int]
    {
         // лимит поиска
        var count = 2
        var primeNumber = [Int]()  // массив для записи
        var set = 0

        while count < goal {
            for i in primeNumber{
                if ((count % i) == 0) {
                    set = 1
                }
            }
            if set == 0 {
                primeNumber.append(count)
                count += 1
                set = 0
            } else {
                count += 1
                set = 0
            }
        }
        print(primeNumber )
        return primeNumber
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        findSimpleNumber(goal: 100)
        // Override point for customization after application launch.
        return true
    }

}

