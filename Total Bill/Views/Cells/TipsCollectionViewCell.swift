//
//  TipsCollectionViewCell.swift
//  Total Bill
//
//  Created by Артем Галай on 29.08.22.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {

    lazy var procentLabel: UILabel = {
        let label = UILabel()
        label.text = "10%"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9411764706, alpha: 1)
        layer.cornerRadius = 10
        addSubview(procentLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            procentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            procentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            procentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
