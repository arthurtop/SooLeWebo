//
//  HomeViewController.swift
//  SooLeWebo
//
//  Created by songlei on 2018/2/2.
//  Copyright © 2018年 songlei. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }
    
    
    
    
    
    
    
    
}












extension HomeViewController {
    
    // map
//    func map<T>
    
    
    
}


extension HomeViewController {
    /* 泛型数据  */
    func swapTwoValues<T>(_ a:inout T, _ b: inout T){
        
        let temp = a
        a = b
        b = temp
    }
    
    
    
    /* guard  不满足条件才走   */
    func buySomeThing(money: Int, price: Int, capacity:Int, voluem: Int){
        
        guard money >= price else {
            print("No enough money buy some thing")
            return
        }
        
        guard capacity >= voluem else {
            print("No enough capacity")
            return
        }
        
        print("过滤掉买不起的情况 然后就可以买了")
        
        //        swapTwoValues(&money, &price)
        
        
    }
    
    
    public struct Stack<T> {
        
        //array
        fileprivate var stackArray = [T]()
        
        //count
        public var count: Int {
            return stackArray.count
        }
        
        //is empty
        public var isEmpty: Bool {
            return stackArray.isEmpty
        }
        
        //top element
        public var top: T? {
            if isEmpty {
                return nil
            }else {
                return stackArray.last
            }
        }
        
        //push operatiom
        public mutating func push(_ element: T) {
            stackArray.append(element)
        }
        
        //pop operation
        public mutating func pop() -> T? {
            if isEmpty {
                print("stack is emepty")
                return nil
            } else {
                return stackArray.removeLast()
            }
        }
        
        //print all
        public mutating func printAllElements() {
            guard count > 0 else {
                print("stack is empty")
                return
            }
            
            print("\n print all stack elements:")
            for (index, value) in stackArray.enumerated() {
                print("[\(index)]\(value)]")
            }
        }
        
    }
    
    
    func someDoing() {
        
        var stack = Stack.init(stackArray: [])
        stack.printAllElements()
        stack.isEmpty
        
        stack.push(2)
        stack.printAllElements()
        
        stack.top
        
    }
    
    
}





