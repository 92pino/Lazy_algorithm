import UIKit

// 방문한 노드를 저장하는 큐
// 방문해야 하는 노드를 저장하는 스택

public class TreeNode {
    public var value: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.value = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
    
    public init(_ value: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.value = value
        self.left = left
        self.right = right
    }
}

// Tree DFS
func dfs(_ node: TreeNode?) {
    guard let node else { return }
    
    print(node.value)   // 현재 노드 방문
    
    dfs(node.left)      // 왼쪽 가지로 깊게 방문
    dfs(node.right)     // 오른쪽 가지로 깊게 방문
}

let root = TreeNode(1,
    TreeNode(2,
        TreeNode(4),
        TreeNode(5)
    ),
    TreeNode(3)
)
print(dfs(root))

// Graph DFS
