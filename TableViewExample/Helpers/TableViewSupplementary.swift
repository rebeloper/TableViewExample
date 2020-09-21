//
//  TableViewSupplementary.swift
//  TableViewExampleDemo
//
//  Created by Alex Nagy on 17/09/2020.
//

import UIKit

open class TableViewSupplementary<T>: UITableViewHeaderFooterView {
    
    open var item: T? {
        didSet {
            layoutViews()
            configureViews(for: self.item)
        }
    }
    
    override public init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func layoutViews() {}
    open func configureViews(for item: T?) {}
    
}
