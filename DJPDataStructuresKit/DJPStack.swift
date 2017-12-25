//
//  DJPStack.swift
//  DJPDataStructuresKit
//
//  Created by Deep Parekh on 12/24/17.
//  Copyright © 2017 Deep Parekh. All rights reserved.
//

public enum StackError: Error {
    case underFlowError
    case overFlowError
}

public struct DJPStack<T> {
    private var contents: [T]
    private var capacity: Int
    
    public init(withCapacity capacity: Int = 5){
        contents = [T]()
        self.capacity = capacity
    }
    
    public mutating func push(data: T) throws {
        if contents.count == capacity {
            throw StackError.overFlowError
        }
        contents.append(data)
    }
    
    public mutating func pop() throws -> T {
        if contents.isEmpty {
            throw StackError.underFlowError
        }
        return contents.removeLast()
    }
    
    public func printContents() {
        for element in contents {
            print(element)
        }
    }
}
