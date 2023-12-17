//
//  ContentView.swift
//  ToDo List
//
//  Created by пользователь on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var curentTodo = ""
    @State var todos: [Item] = []
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New todo..", text: $curentTodo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        guard !self.curentTodo .isEmpty else { return }
                        self.todos.append(Item(todo: self.curentTodo))
                        self.curentTodo = ""
                    }) {
                        Image(systemName: "text.badge.plus")
                    }
                    padding(.leading, 5)
                }.padding()
            }
            .navigationBarTitle("Todo List")
        }
    }
}

#Preview {
    ContentView()
}

