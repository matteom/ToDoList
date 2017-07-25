//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 12/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding {
	let name: String
	let creationDate: Date
	var completed: Bool
	
	init(name: String, completed: Bool, creationDate: Date) {
		self.name = name
		self.completed = completed
		self.creationDate = creationDate
	}
	
	required init?(coder aDecoder: NSCoder) {
		name = aDecoder.decodeObject(forKey: Keys.Name.rawValue) as! String
		completed = aDecoder.decodeObject(forKey: Keys.Completed.rawValue) as! Bool
		creationDate = aDecoder.decodeObject(forKey: Keys.CreationDate.rawValue) as! Date
	}
	
	func encode(with aCoder: NSCoder) {
		aCoder.encode(name, forKey: Keys.Name.rawValue)
		aCoder.encode(completed, forKey: Keys.Completed.rawValue)
		aCoder.encode(creationDate, forKey: Keys.CreationDate.rawValue)
	}
	
	enum Keys: String {
		case Name = "name"
		case Completed = "completed"
		case CreationDate = "creationDate"
	}
}
