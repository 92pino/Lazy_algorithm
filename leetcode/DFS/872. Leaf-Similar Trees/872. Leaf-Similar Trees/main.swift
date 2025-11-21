//
//  main.swift
//  872. Leaf-Similar Trees
//
//  Created by Twayair on 11/21/25.
//

import Foundation

func buildTree(_ values: [Int?]) -> TreeNode? {
    guard !values.isEmpty else { return nil }
    var nodes: [TreeNode?] = values.map { $0 == nil ? nil : TreeNode($0!) }
    
    var i = 0
    var j = 1
    
    while j < nodes.count {
        if let node = nodes[i] {
            node.left = nodes[j]
            j += 1
            if j < nodes.count {
                node.right = nodes[j]
                j += 1
            }
        }
        i += 1
    }
    return nodes[0]
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    return getLeaves(root1) == getLeaves(root2)
}

func getLeaves(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }
    
    if root.left == nil && root.right == nil {
        return [root.val]
    }
    
    return getLeaves(root.left) + getLeaves(root.right)
}

print(leafSimilar(buildTree([3,5,1,6,2,9,8,nil,nil,7,4]), buildTree([3,5,1,6,7,4,2,nil,nil,nil,nil,nil,nil,9,8])))
