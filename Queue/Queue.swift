//
//  Queue.swift
//  practiceCoding
//
//  Created by Javed Multani on 06/06/21.
//

import Foundation
class IntQueue{
var items = [Int]()
func enqueue(_ item:Int){
    items.append(item)
 
}
func dequeue(){
    items.removeFirst()
}
func show(){
    print(items)
}
func count(){
    print(items.count)
}
func minItem(){
    print(items.min()!)
}
func minFromQueueWithoutMinFunc(){
    for i in 0..<items.count{
        var min = items[0]
        if items[i] < min{
            min = items[i]
        }
        print(min)
    }
    
}
func maxItem(){
    print(items.max()!)
}
func maxFromQueueWithoutMaxFunc(){
    for i in 0..<items.count{
        var max = items[0]
        if items[i] > max{
            max = items[i]
        }
        print(max)
    }

}
}
