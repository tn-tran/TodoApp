//
//  TodoItem.swift
//  TodoApp
//
//  Created by Tien Tran on 9/18/18.
//  Copyright © 2018 Tien-Enterprise. All rights reserved.
//

import Foundation

struct TodoItem: Codable {
	
	var title: String
	var completed: Bool
	var createdAt: Date
	var itemIdentifier:UUID
	
	
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
