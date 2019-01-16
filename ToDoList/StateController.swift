//
//  StateController.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 12/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import Foundation

class StateController {
    static let itemsFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/items.txt"
	
	private(set) var items: [ToDoItem] = {
        if let items = NSKeyedUnarchiver.unarchiveObject(withFile: itemsFilePath) as? [ToDoItem] {
			return items
		} else {
			return [ToDoItem]()
		}
	}()

	func addItem(item: ToDoItem) {
		items.append(item)
	}
	
	func save() {
		NSKeyedArchiver.archiveRootObject(self.items, toFile: StateController.itemsFilePath)
	}
}
