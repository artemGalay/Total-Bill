//
//  TipsCollectionView.swift
//  Total Bill
//
//  Created by Артем Галай on 29.08.22.
//

import UIKit

class TipsCollectionView: UICollectionView {

   var flowLayout = UICollectionViewLayout()

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
        seputHierarchy()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func seputHierarchy() {
        delegate = self
        dataSource = self

    }

    private func setupLayuot() {

    }
}

extension TipsCollectionView : UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }


}
