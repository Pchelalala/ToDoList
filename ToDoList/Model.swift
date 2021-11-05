//
//  Model.swift
//  ToDoList
//
//  Created by Лю Пчела on 05.11.2021.
//

import Foundation

var ToDoItems: [[String: Any]] = [["Name": "Позвонить маме", "isCompleted": false], ["Name": "Купить хлеб", "isCompleted": false], ["Name": "Покормить кота", "isCompleted": false]]

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
    
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    
    saveData()
}

func changeState(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    
    saveData()
    
    return (ToDoItems[item]["isCompleted"] as! Bool)
}

func saveData() {
    UserDefaults.standard.set(ToDoItems, forKey: "ToDoDataKey")
    UserDefaults.standard.synchronize()
}

func loadData() {
    if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
        ToDoItems = array
    } else {
        ToDoItems = []
    }
}
