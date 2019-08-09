//
//  ViewController.swift
//  SinglyLinkedList
//
//  Created by Sneha Harke on 29/07/19.
//  Copyright © 2019 Sneha Harke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nodeOperation: NodeOperation = NodeOperation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //insertingNode()
        
        nodeOperation.printList()
        
        let newNode = Node(value: 8)
        nodeOperation.insertValueAtFirstPosition(node: newNode)
        
        
        let newNode1 = Node(value: 7)
        nodeOperation.insertValueAtFirstPosition(node: newNode1)
        
        let newNode2 = Node(value: 6)
        nodeOperation.insertValueAtFirstPosition(node: newNode2)
        
        let newNode3 = Node(value: 2)
        nodeOperation.insertAt(position: 2, node: newNode3)
        nodeOperation.printList()

        
        // Do any additional setup after loading the view.
    }

//    func insertingNode() {
//        for i in 1...5 {
//            let newNode = Node(value: i)
//            nodeOperation.insertNode(node: newNode)
//        }
//    }

}



