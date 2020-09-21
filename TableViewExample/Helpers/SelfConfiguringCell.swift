//
//  SelfConfiguringCell.swift
//  TableViewExampleDemo
//
//  Created by Alex Nagy on 17/09/2020.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
}
