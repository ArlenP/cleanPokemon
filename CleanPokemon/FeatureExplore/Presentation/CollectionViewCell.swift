//
//  CollectionViewCell.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 22/11/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CellPokemon"
       
       let titleLabel: UILabel = {
           let label = UILabel()
           label.textAlignment = .center
           label.textColor = .black
           return label
       }()
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           setupSubviews()
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       private func setupSubviews() {
           contentView.addSubview(titleLabel)
       }
       
       func configure(title: String) {
           titleLabel.text = title
       }
    
}
