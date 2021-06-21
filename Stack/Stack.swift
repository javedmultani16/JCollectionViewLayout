//
//  Stack.swift
//  practiceCoding
//
//  Created by Javed Multani on 06/06/21.
//

import Foundation

struct IntStack {
    var items = [Int]()
    mutating func push(_ item:Int){
        items.append(item)
    }
    
    mutating func pop(){
        items.removeLast()
    }
    func top()->Int{
       return items.last ?? 0
    }
    func isEmpty()->Bool{
       if items.count > 0{
            return false
       }else{
            return true
       }
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
    func minItemWithoutMinFunc(){
        var min = items[0]
        for i in 0..<items.count{
            if items[i] < min{
                min = items[i]
            }
        }
        print(min)
    }
    func maxItem(){
        print(items.max()!)
    }
    func maxItemWithoutMaxFunc(){
        var max = items[0]
        for i in 0..<items.count{
            if items[i] > max{
                max = items[i]
            }
        }
        print(max)
    }
}
/*
 func findMinFromStack(){
     var lines = IntStack()
     lines.push(12)
     lines.push(30)
     lines.show()
     lines.maxItem()
     lines.maxItemWithoutMaxFunc()
 }
 */
