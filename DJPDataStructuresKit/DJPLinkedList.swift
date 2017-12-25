//
//  LinkedList.swift
//  DJPDataStructuresKit
//
//  Created by Deep Parekh on 12/24/17.
//  Copyright © 2017 Deep Parekh. All rights reserved.
//

public class DJPLinkedList<T: Equatable> {
    public let data: T
    public var next :DJPLinkedList<T>?
    public var first :DJPLinkedList<T>?
    public var last :DJPLinkedList<T>?
    
    public init(data: T) {
        self.data = data
    }
    
    public func insert(data :T) {
        if first == nil {
            first = DJPLinkedList<T>(data: data)
            last = first
            last?.next = nil
        } else {
            last?.next = DJPLinkedList<T>(data: data)
            last = last?.next
        }
    }
    
    public func remove(data: T) {
        guard first != nil, last != nil else {
            return
        }
        
        var temp = first
        while (temp != last?.next) {
            if temp?.next?.data == data {
                temp?.next = temp?.next?.next
                return
            }
            temp = temp?.next
        }
    }
    
    public func printList() {
        var temp = first
        while (temp != last?.next) {
            print("\(temp!.data)")
            temp = temp?.next
        }
    }
}

// MARK: - Equatable
extension DJPLinkedList: Equatable {
    public static func ==(lhs: DJPLinkedList, rhs: DJPLinkedList) -> Bool {
        return lhs.data == rhs.data
    }
}
