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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 0.5647058824, green: 0.1529411765, blue: 0.5568627451, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        procentLabel.font = UIFont(name: "Avenir Next Bold", size: frame.height / 3.5)
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
