//
//  ViewController.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 11/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
	
	var stateController: StateController?
	var tableViewDataSource: TableViewDataSource?
	var tableViewDelegate: TableViewDelegate?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	        tableView.registerClass(ToDoItemCell.self, forCellReuseIdentifier: ToDoItemCell.identifier)
	        
		if let stateController = stateController {
			tableViewDataSource = TableViewDataSource(tableView: tableView, stateController: stateController)
			tableViewDelegate = TableViewDelegate(tableView: tableView, stateController: stateController)
		}
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if let navigationController = segue.destinationViewController as? UINavigationController,
			let addToDoItemViewController = navigationController.viewControllers.first as? AddToDoItemViewController {
			addToDoItemViewController.stateController = stateController
		}
	}
	
	@IBAction func unwindToList(segue: UIStoryboardSegue) {
		
	}
	
}

