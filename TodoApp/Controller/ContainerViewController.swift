//
//  ContainerViewController.swift
//  TodoApp
//
//  Created by Tien Tran on 9/19/18.
//  Copyright © 2018 Tien-Enterprise. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

	@IBOutlet weak var containerView: UIView!
	@IBOutlet weak var connectionButton: UIButton!
	@IBOutlet weak var addButton: UIButton!
	
	var todoTableViewController: TodoTableViewController!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		addButton.layer.cornerRadius = addButton.frame.size.width / 2
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "TodoVC" {
			todoTableViewController = (segue.destination as! UINavigationController).children.first as? TodoTableViewController
			todoTableViewController.connectionButtonReference = connectionButton
			
			
		}
	}

	@IBAction func addNewTodoItem(_ sender: Any) {
	todoTableViewController.addNewTodo()
	}
	@IBAction func triggerConnection(_ sender: Any) {
		todoTableViewController.showConnectivityAction()
	}
	/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
