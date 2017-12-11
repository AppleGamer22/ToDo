//
//  ViewController.swift
//  ToDo
//
//  Created by Omri Bornstein on 11/12/17.
//  Copyright © 2017 AppleGamer22 Software Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let todoItem = ToDoItem(title: "read news", completed: false, createdAt: Date(), itemIdentifier: UUID())
        let todos = DataManager.loadAll(ToDoItem.self)
        print(todos)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

