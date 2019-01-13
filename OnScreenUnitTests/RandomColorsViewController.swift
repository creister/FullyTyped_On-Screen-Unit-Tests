//
//  RandomColorsViewController.swift
//  UnitTestWithoutApp
//
//  Created by Colin Reisterer on 1/8/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import UIKit

class RandomColorsViewController: UICollectionViewController {

  private let cellReuseIdentifier = "cell"
  private let colorGenerator: ColorGenerator
  private var colors: [UIColor] = []

  init(colorGenerator: ColorGenerator = RandomColorGenerator()) {
    self.colorGenerator = colorGenerator
    super.init(collectionViewLayout: UICollectionViewFlowLayout())
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    collectionView.backgroundColor = .white

    let flowLayout = (collectionViewLayout as! UICollectionViewFlowLayout)
    flowLayout.itemSize = CGSize(width: 60, height: 60)
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)

    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Generate", style: .plain, target: self, action: #selector(generatePressed))
  }

  @objc
  func generatePressed() {
    colors.append(colorGenerator.newColor())
    let newIndexPath = IndexPath(row: colors.count - 1, section: 0)
    collectionView.insertItems(at: [newIndexPath])
  }

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if colors.isEmpty {
      showEmptyState()
    } else {
      hideEmptyState()
    }
    return colors.count
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath)
    cell.backgroundColor = colors[indexPath.row]
    return cell
  }

  private func showEmptyState() {
    let label = UILabel()
    label.textAlignment = .center
    label.text = "No colors yet, add one by tapping Generate!"
    collectionView.backgroundView = label
  }

  private func hideEmptyState() {
    collectionView.backgroundView = nil
  }

}
