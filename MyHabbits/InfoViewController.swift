//
//  InfoViewController.swift
//  MyHabbits
//
//  Created by Vladislav Barinov on 09.04.2022.
//

import UIKit

class InfoViewController: UIViewController {

    private let scrollView: UIScrollView = {

        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Привычка за 21 день"
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму:"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()

    private let habit1Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1. Провести 1 день без обращения к старым привычкам, стараться вести себя так, как будто цель, загаданная в перспективу, находится на расстоянии шага."
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()

    private let habit2Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2. Выдержать 2 дня в прежнем состоянии самоконтроля."
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    private let habit3Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3. Отметить в дневнике первую неделю изменений и подвести первые итоги — что оказалось тяжело, что — легче, с чем еще предстоит серьезно бороться."
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    private let habit4Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4. Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятия положительных качеств."
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    private let habit5Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5. Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого негатива и двигается в нужном направлении с хорошей динамикой."
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    private let habit6Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "6. На 90-й день соблюдения техники все лишнее из «прошлой жизни» перестает напоминать о себе, и человек, оглянувшись назад, осознает себя полностью обновившимся."
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Информация"
        view.backgroundColor = .white
        layout()
    }

    private func layout() {

        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)

        ])

        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])

        [titleLabel,subTitleLabel,habit1Label,habit2Label,habit3Label,habit4Label,habit5Label, habit6Label].forEach({ contentView.addSubview($0) })

        NSLayoutConstraint.activate([

            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),

            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            subTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            subTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            habit1Label.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant:  16),
            habit1Label.leadingAnchor.constraint(equalTo: subTitleLabel.leadingAnchor),
            habit1Label.trailingAnchor.constraint(equalTo: subTitleLabel.trailingAnchor),

            habit2Label.topAnchor.constraint(equalTo: habit1Label.bottomAnchor, constant:  16),
            habit2Label.leadingAnchor.constraint(equalTo: habit1Label.leadingAnchor),
            habit2Label.trailingAnchor.constraint(equalTo: habit1Label.trailingAnchor),

            habit3Label.topAnchor.constraint(equalTo: habit2Label.bottomAnchor, constant:  16),
            habit3Label.leadingAnchor.constraint(equalTo: habit2Label.leadingAnchor),
            habit3Label.trailingAnchor.constraint(equalTo: habit2Label.trailingAnchor),

            habit4Label.topAnchor.constraint(equalTo: habit3Label.bottomAnchor, constant:  16),
            habit4Label.leadingAnchor.constraint(equalTo: habit3Label.leadingAnchor),
            habit4Label.trailingAnchor.constraint(equalTo: habit3Label.trailingAnchor),

            habit5Label.topAnchor.constraint(equalTo: habit4Label.bottomAnchor, constant:  16),
            habit5Label.leadingAnchor.constraint(equalTo: habit4Label.leadingAnchor),
            habit5Label.trailingAnchor.constraint(equalTo: habit4Label.trailingAnchor),

            habit6Label.topAnchor.constraint(equalTo: habit5Label.bottomAnchor, constant:  16),
            habit6Label.leadingAnchor.constraint(equalTo: habit5Label.leadingAnchor),
            habit6Label.trailingAnchor.constraint(equalTo: habit5Label.trailingAnchor),
            habit6Label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

}
