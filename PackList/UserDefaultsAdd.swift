//
//  UserDefaultsAdd.swift
//  PackList
//
//  Created by USER on 2020/02/16.
//  Copyright © 2020 Akidon. All rights reserved.
//

import Foundation

class UserDef {
    func add(){
        userDefaults.set(cellList, forKey: "cellList")
        userDefaults.set(sectionTitles, forKey: "sectionTitles")
        UserDefaults.standard.synchronize()
    }
    func get(){
        if userDefaults.object(forKey: "sectionTitles") != nil {
            cellList = userDefaults.array(forKey: "cellList")
            sectionTitles = userDefaults.array(forKey: "sectionTitles")
    
        }else{
            print("get_bbb")
        }
        var aaa = UserDefaults.standard.string(forKey: "cell")
        print(aaa)
    }
    func test(){
        print("User")
        print(cellList)
    }
}
