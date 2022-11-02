//
//  LinkedLists.swift
//  PersonalSwifGuide - UIkit - SwiftUI
//
//  Created by Bruno Sabadini on 22/09/22.
//
import SwiftUI
import Foundation

class Node{
  
  var data: Int
  var next: Node?
  
  init(_ data: Int, next: Node? = nil){
    self.data = data
    self.next = next
  }
  
}


class LinkedList {
  
  var head: Node = Node(4)
  var nodeB: Node = Node(2)
  var nodeC: Node = Node(3)
  var nodeD: Node = Node(10)
  var nodeE: Node = Node(2)
  
  func countHowManyNodes (head: Node) -> Int {
    
    return 0
  }
  
  func passValueThrowNodes(){
    head.next = nodeB
    nodeB.next = nodeC
    nodeC.next = nodeD
    nodeD.next = nodeE
  }
  
}





