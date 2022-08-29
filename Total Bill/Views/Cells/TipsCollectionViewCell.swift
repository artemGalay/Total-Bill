//
//  TipsCollectionViewCell.swift
//  Total Bill
//
//  Created by Артем Галай on 29.08.22.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {



    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9411764706, alpha: 1)
    }    
}
