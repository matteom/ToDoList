//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Matteo Manferdini on 11/08/15.
//  Copyright (c) 2015 Matteo Manferdini. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	let stateController = StateController()

	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		if let navigationController = window?.rootViewController as? UINavigationController,
			let toDoListTableViewController = navigationController.viewControllers.first as? ToDoListTableViewController {
			toDoListTableViewController.stateController = stateController
		}
		return true
	}

	func applicationWillTerminate(application: UIApplication) {
		stateController.save()
	}
	
	func applicationWillResignActive(application: UIApplication) {
		stateController.save()
	}
}

