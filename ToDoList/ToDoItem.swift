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
	let creationDate: NSDate
	var completed: Bool
	
	init(name: String, completed: Bool, creationDate: NSDate) {
		self.name = name
		self.completed = completed
		self.creationDate = creationDate
	}
	
	required init(coder aDecoder: NSCoder) {
		name = aDecoder.decodeObjectForKey(Keys.Name.rawValue) as! String
		completed = aDecoder.decodeObjectForKey(Keys.Completed.rawValue) as! Bool
		creationDate = aDecoder.decodeObjectForKey(Keys.CreationDate.rawValue) as! NSDate
	}
	
	func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(name, forKey: Keys.Name.rawValue)
		aCoder.encodeObject(completed, forKey: Keys.Completed.rawValue)
		aCoder.encodeObject(creationDate, forKey: Keys.CreationDate.rawValue)
	}
	
	enum Keys: String {
		case Name = "name"
		case Completed = "completed"
		case CreationDate = "creationDate"
	}
}
