//
//  CellTapped.swift
//  TableViewStudy
//
//  Created by USER on 2020/01/07.
//  Copyright © 2020 Akidon. All rights reserved.
//

import UIKit

class CellTapped: UIViewController {
    @IBOutlet weak var CellName: UILabel!
    @IBOutlet weak var CellNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        CellName.text = cellList[indexPath_section][Int(indexPath_row)]
        CellNumber.text = "第\(indexPath_section)セクションの\(indexPath_row)個目のセル"
    }
}
