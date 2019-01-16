//
//  ToDoItemCell.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 28/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {
	static let identifier = "ToDoItemCell"
	
	var name: String? {
		didSet {
			textLabel?.text = name
		}
	}
	
	var completed: Bool = false {
		didSet {
			if (completed) {
                accessoryType = UITableViewCell.AccessoryType.checkmark
			} else {
                accessoryType = UITableViewCell.AccessoryType.none;
			}
		}
	}
}
