//
//  AppDelegate.swift
//  MyHabbits
//
//  Created by Vladislav Barinov on 09.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let tabBar = UITabBarController()


        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        let habitsVC = HabitsViewController()
        habitsVC.tabBarItem = UITabBarItem(title: "Привычки", image: UIImage(systemName: "star"), tag: 0)
        let navHabits = UINavigationController(rootViewController: habitsVC)
        let infoVC = InfoViewController()
        infoVC.tabBarItem = UITabBarItem(title: "Информация", image: UIImage(systemName: "star"), tag: 1)

        tabBar.viewControllers = [navHabits, infoVC]
        window?.rootViewController = tabBar

        return true
    }
}

