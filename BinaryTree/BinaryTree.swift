//
//  BinaryTree.swift
//  practiceCoding
//
//  Created by Javed Multani on 07/06/21.
//

import Foundation
class TreeNode{
    var value: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(_ value:Int, _ leftChild: TreeNode?,_ rightChild:TreeNode?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
    /*
     We can traverse the tree in three possible ways:

     Inorder – Prints the left child value then current node value and lastly right child value.
     Postorder – Prints left and right child values then current node value.
     Preorder – Prints current node value followed by left and right child values.

     */
    func inorderTraversal(_ root:TreeNode?)->[Int]{
        if root == nil{
            return []
        }
        var result = [Int]()
        result = result + inorderTraversal(root!.leftChild)
        print("left===>",root!.leftChild?.value)
        result.append(root!.value)
        result = result + inorderTraversal(root!.rightChild)
        print(result)
        return result
    }
    
    func preorderTraversal(_ root:TreeNode?)->[Int]{
        if root == nil{
            return []
        }
        var result = [Int]()
        result.append(root!.value)
        result = result + preorderTraversal(root!.leftChild)
        result = result + preorderTraversal(root!.rightChild)
        print(result)
        return result
        
    }
    
    func postTraversal(_ root:TreeNode?)->[Int]{
        if root == nil{
            return []
        }
        var result = [Int]()
        result = result + postTraversal(root!.leftChild)
        result = result + postTraversal(root!.rightChild)
        result.append(root!.value)
        print(result)
        return result
        
    }
    /*func showLeftNodes(_ root:TreeNode?){
        if root == nil{
            print("----")
            return
        }else{
            var leftNode = root?.leftChild
            if leftNode != nil{
                print(leftNode?.value)
                leftNode = leftNode?.leftChild
                showLeftNodes(leftNode)
            }else{
                print("----")
                return
            }
            root?.leftChild
        }
        
     
    }*/
    
}
/*
 
let ten = TreeNode(10,nil,nil)
let one = TreeNode(0,nil,nil)
let third = TreeNode(3,nil,nil)
let fourth = TreeNode(4,nil,nil)
let five = TreeNode(5,ten,third)
let six = TreeNode(6,fourth,nil)
let root = TreeNode(2,five,six)
print(root)
 */
