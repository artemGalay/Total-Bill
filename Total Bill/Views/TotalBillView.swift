//
//  TotalBillView.swift
//  Total Bill
//
//  Created by Артем Галай on 29.08.22.
//

import UIKit

final class TotalBillView: UIView {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    lazy var summTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9529411765, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.tintColor = #colorLiteral(red: 0.5647058824, green: 0.1529411765, blue: 0.5568627451, alpha: 1)
        textField.font = UIFont(name: "Avenir Next Bold", size: 48)
        textField.textAlignment = .center
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        translatesAutoresizingMaskIntoConstraints = false

        addSubview(titleLabel)
        addSubview(summTextField)

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),

            summTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            summTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            summTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            summTextField.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
