//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 11/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
	@IBOutlet weak var cancelButton: UIBarButtonItem!
	@IBOutlet weak var saveButton: UIBarButtonItem!
	@IBOutlet weak var nameTextField: UITextField!
	
	var stateController: StateController?
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		guard let tappedButton = sender as? UIBarButtonItem where tappedButton != cancelButton else {
			return;
		}
		guard let text = nameTextField.text else {
			return
		}
		let todoItem = ToDoItem(name: text, completed: false, creationDate: NSDate())
		stateController?.addItem(todoItem)
	}
	
}
