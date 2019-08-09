//
//  NodeClass.swift
//  SinglyLinkedList
//
//  Created by Sneha Harke on 29/07/19.
//  Copyright © 2019 Sneha Harke. All rights reserved.
//

import Foundation

class Node {
    var value: Int
    var nextNode: Node?
    
    init(value: Int) {
        self.value = value
        self.nextNode = nil
    }
}


class NodeOperation {
    var head: Node?
    var currentNode: Node?
    
    func insertNode(node: Node?) {
        guard let insertNode = node else {
            return
        }
        if head == nil {
            let newNode = insertNode
            head = newNode
            currentNode = head
        } else {
            currentNode?.nextNode = insertNode
            currentNode = currentNode?.nextNode
        }
    }
    
    func printList() {
        var trav = head
        if trav == nil {
            print("List is empty")
            return
        }
        var list: String = "["
        while trav != nil {
            guard let value = trav?.value else {return}
            print("\(value)")
            list.append("->" + "\(value)")
            trav = trav?.nextNode
        }
        list.append("]")
        print("List Is : " + list)
    }
    
    func insertValueAtFirstPosition(node: Node?) {
        guard let insertNode = node else {return}
        let trav = head
        if head == nil {
            let newNode = insertNode
            head = newNode
            currentNode = head
        } else {
            head = insertNode
            head?.nextNode = trav
        }
    }
    
    func insertNodeAtLastPosition(node: Node?) {
        guard let insertNode = node else {return}
        let trav = head
        if head == nil {
            let newNode = insertNode
            head = newNode
            currentNode = head
        } else {
            
            head = insertNode
            head?.nextNode = trav
        }
        
    }
    
    func insertAt(position: Int, node:Node?) {
        if head == nil {
            self.insertValueAtFirstPosition(node: node)
        } else {
            var temp = head
            currentNode = head
            
            for _ in 1...position {
                temp = currentNode
                currentNode = currentNode?.nextNode
            }
            
           node?.nextNode = temp?.nextNode
           temp?.nextNode = node
        }
    }
}
