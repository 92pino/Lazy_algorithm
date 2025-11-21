//
//  main.swift
//  104. Maximum Depth of Binary Tree
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

func maxDepth(_ root: TreeNode?) -> Int {
    return root == nil ? 0 : 1 + max(maxDepth(root?.left), maxDepth(root?.right))
}

print(maxDepth(buildTree([3,9,20,nil,nil,15,7])))
