//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by 김세준 on 2022/09/27.
//

import UIKit

class FocusCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
    }
    func configure(_ item: Focus) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumnailImageView.image = UIImage(systemName: item.imageName)?.withRenderingMode(.alwaysOriginal)//컬러
        
    }
}
