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
		if let stateController = stateController {
			tableViewDataSource = TableViewDataSource(tableView: tableView, stateController: stateController)
			tableViewDelegate = TableViewDelegate(tableView: tableView, stateController: stateController)
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let navigationController = segue.destination as? UINavigationController,
			let addToDoItemViewController = navigationController.viewControllers.first as? AddToDoItemViewController {
			addToDoItemViewController.stateController = stateController
		}
	}
	
	@IBAction func unwindToList(_ segue: UIStoryboardSegue) {
		
	}
	
}

