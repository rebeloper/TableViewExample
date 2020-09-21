//
//  MyTableViewFooter.swift
//  TableViewExampleDemo
//
//  Created by Alex Nagy on 17/09/2020.
//

import UIKit

class MyTableViewFooter: TableViewSupplementary<String>, SelfConfiguringCell {
    
    static var reuseIdentifier: String = "footer"
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    override func layoutViews() {
        super.layoutViews()
        contentView.backgroundColor = .systemYellow
        contentView.addSubview(titleLabel)
        titleLabel.edgeTo(contentView)
    }
    
    override func configureViews(for item: String?) {
        titleLabel.text = item
    }
    
}
