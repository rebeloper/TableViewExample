//
//  TableViewCell.swift
//  TableViewExampleDemo
//
//  Created by Alex Nagy on 17/09/2020.
//

import UIKit

open class TableCell<T>: UITableViewCell {
    
    open var item: T? {
        didSet {
            layoutViews()
            configureViews(for: self.item)
        }
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func layoutViews() {}
    open func configureViews(for item: T?) {}
    
}



