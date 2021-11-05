//
//  Model.swift
//  ToDoList
//
//  Created by Лю Пчела on 05.11.2021.
//

import Foundation

var ToDoItems: [String] = ["Позвонить маме", "Купить хлеб"]

func addItem(nameItem: String) {
    ToDoItems.append(nameItem)
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func saveData() {
    
}

func loadData() {
    
}
