//
//  TipsView.swift
//  Total Bill
//
//  Created by Артем Галай on 29.08.22.
//

import UIKit

final class TipsView: UIView {

    private lazy var tipsLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = #colorLiteral(red: 0.9813271165, green: 0.9813271165, blue: 0.9813271165, alpha: 1)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    } ()

    let tipsArray = ["0%", "10%", "15%", "20%"]
    var tipsCount = 1

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupHierarchy()
        setupLayout()
        setDelegates()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        tipsLabel.font = UIFont(name: "Avenir Next", size: frame.width / 26.7)
    }

    private func setupHierarchy() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(tipsLabel)
        addSubview(collectionView)
        collectionView.register(TipsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }

    private func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            tipsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            tipsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tipsLabel.heightAnchor.constraint(equalToConstant: 20),

            collectionView.topAnchor.constraint(equalTo: tipsLabel.bottomAnchor, constant: 2),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])

    }
}

extension TipsView: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TipsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.procentLabel.text = tipsArray[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: tipsCount = 10
        case 1: tipsCount = 15
        case 2: tipsCount = 20
        default:
            tipsCount = 0
        }
    }
}

extension TipsView: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 5,
               height: collectionView.frame.width / 5)
    }
}
