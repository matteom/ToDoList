//
//  TableViewDelegate.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 28/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class TableViewDelegate: NSObject {
	let stateController: StateController
	
	init(tableView: UITableView, stateController: StateController) {
		self.stateController = stateController
		super.init()
		tableView.delegate = self
	}
}

extension TableViewDelegate: UITableViewDelegate {
	
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
		let tappedItem = stateController.items[indexPath.row]
		tappedItem.completed = !tappedItem.completed
        tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.none)
	}
	
}
