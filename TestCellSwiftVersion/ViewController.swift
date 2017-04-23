//
//  ViewController.swift
//  TestCellSwiftVersion
//
//  Created by tomfriwel on 20/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {
    @IBOutlet weak var tableView: NSTableView!

    override func viewDidLoad() {
        super.viewDidLoad()

//        let headerCell = CustomTableHeaderCell()
//        headerCell.stringValue = "Header title"
//        tableView.tableColumns[0].headerCell = headerCell
        // Do any additional setup after loading the view.
//        tableView.headerView?.layout()
        
        let headerCell = CustomTableHeaderCell.init(textCell: "123123")
//        let font = NSFont(name: "Arial", size: 22.0)
//        headerCell.stringValue = "firstname"
//        headerCell.font = font
        self.tableView.tableColumns[0].headerCell = headerCell
    }

    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 55
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        return NSTableCellView.init()
    }
}

