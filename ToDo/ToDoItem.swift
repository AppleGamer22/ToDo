//
//  ToDoItem.swift
//  ToDo
//
//  Created by Omri Bornstein on 11/12/17.
//  Copyright © 2017 AppleGamer22 Software Development. All rights reserved.
//

import Foundation

struct ToDoItem: Codable {
    var title: String
    var completed: Bool
    var createdAt: Date
    var itemIdentifier: UUID

    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }

    func deleteItem() {
        DataManager.delete(itemIdentifier.uuidString)
    }

    mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
}
