//
//  MyTableViewCell.swift
//  TableViewExampleDemo
//
//  Created by Alex Nagy on 17/09/2020.
//

import UIKit

class MyTableViewCell: TableCell<String>, SelfConfiguringCell {
    
    static var reuseIdentifier: String = "cell"
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    override func layoutViews() {
        super.layoutViews()
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(titleLabel)
        titleLabel.edgeTo(contentView)
    }
    
    override func configureViews(for item: String?) {
        titleLabel.text = item
    }
    
}
