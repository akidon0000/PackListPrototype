//
//  SectionAdd.swift
//  TableViewStudy
//
//  Created by USER on 2020/01/07.
//  Copyright © 2020 Akidon. All rights reserved.
//

import UIKit

class SectionAdd: UIViewController {
 
    @IBOutlet weak var SectionTextField: UITextField!
    
    
    @IBAction func SectionAddButton(_ sender: Any) {
        //配列に入力内容を入れる
        sectionTitles.append(SectionTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        SectionTextField.text = ""
        //セクションの数を１つ増やす。
        sectionNum += 1
        cellList.append([])
        print("add")
        userDef.add()
    }
    // returnボタン押下で閉じる場合
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        SectionTextField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
