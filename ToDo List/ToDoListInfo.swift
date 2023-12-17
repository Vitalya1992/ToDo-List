//
//  ToDoListInfo.swift
//  ToDo List
//
//  Created by пользователь on 17.12.2023.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()

    var todo: String
}

var todoItem = Item(todo: "Задача1")
var todoItem2 = Item(todo: "Задача2")
