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
        tabBar.tabBar.backgroundColor = .systemGray6
        tabBar.tabBar.tintColor = #colorLiteral(red: 0.631372549, green: 0.0862745098, blue: 0.8, alpha: 1)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        let habitsVC = HabitsViewController()
        habitsVC.tabBarItem = UITabBarItem(title: "Привычки", image: UIImage(systemName: "rectangle.grid.1x2.fill"), tag: 0)
        let navHabits = UINavigationController(rootViewController: habitsVC)

        let infoVC = InfoViewController()
        let navInfo = UINavigationController(rootViewController: infoVC)
        infoVC.tabBarItem = UITabBarItem(title: "Информация", image: UIImage(systemName: "info.circle"), tag: 1)

        tabBar.viewControllers = [navHabits, navInfo]
        window?.rootViewController = tabBar

        return true
    }
}

