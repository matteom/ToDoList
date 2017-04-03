//
//  TableViewDataSource.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 28/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject {
	let stateController: StateController
	
	init(tableView: UITableView, stateController: StateController) {
		self.stateController = stateController
		super.init()
		tableView.dataSource = self
	}
}

extension TableViewDataSource: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return stateController.items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let toDoItem = stateController.items[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: ToDoItemCell.identifier, for: indexPath) as! ToDoItemCell
		cell.name = toDoItem.name
		cell.completed = toDoItem.completed
		return cell
	}
	
}
