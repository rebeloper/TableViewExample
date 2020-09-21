//
//  ViewController.swift
//  TableViewExample
//
//  Created by Alex Nagy on 21/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.reuseIdentifier)
        tableView.register(MyTableViewHeader.self, forHeaderFooterViewReuseIdentifier: MyTableViewHeader.reuseIdentifier)
        tableView.register(MyTableViewFooter.self, forHeaderFooterViewReuseIdentifier: MyTableViewFooter.reuseIdentifier)
        
//        tableView.rowHeight = 50
//        tableView.sectionHeaderHeight = 50
//        tableView.sectionFooterHeight = 50
        
        tableView.estimatedRowHeight = 50
        tableView.estimatedSectionHeaderHeight = 50
        tableView.estimatedSectionFooterHeight = 50
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        title = "UITableView"
        view.addSubview(tableView)
        tableView.edgeTo(view)
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        Data.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Data.data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.reuseIdentifier) as! MyTableViewCell
        cell.item = Data.data[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: MyTableViewHeader.reuseIdentifier) as! MyTableViewHeader
        view.item = "\nHeader \(section)\n"
        return view
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: MyTableViewFooter.reuseIdentifier) as! MyTableViewFooter
        view.item = "Footer \(section)"
        return view
    }
    
}
