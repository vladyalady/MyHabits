//
//  ViewController.swift
//  MyHabbits
//
//  Created by Vladislav Barinov on 09.04.2022.
//

import UIKit

class HabitsViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setBarButton()
        setNavBar()
        layout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }


    private func setBarButton() {
        let barAddButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addHabit))
        barAddButton.tintColor = #colorLiteral(red: 0.631372549, green: 0.0862745098, blue: 0.8, alpha: 1)
        self.navigationItem.rightBarButtonItem = barAddButton
    }

    @objc private func addHabit() {

        let habitVC = HabitViewController()
        let navContr = UINavigationController(rootViewController: habitVC)
        navContr.modalPresentationStyle = .fullScreen
        present(navContr,animated: true)
       // navigationController?.pushViewController(habitVC, animated: true)
    }

    private func layout() {

    }

    private func setNavBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Сегодня"
    }
}

