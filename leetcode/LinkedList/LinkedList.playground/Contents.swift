import UIKit

/**
 
 특정 값들을 일렬(단방향)으로 저장하는 형태의 자료구조
 
 하나하나의 값의 형태를 **노드**라고 표현
 노드는 값과 다음 노드의 메모리 주소를 포함
 다음 노드가 없다면 메모리주소는 nil ==> 해당 노드가 링크드리스트의 마지막을 의미
 
 */

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

print(node1.next)

node1.next = node2
node2.next = node3

print(node1.next, node2.next, node3.next)
