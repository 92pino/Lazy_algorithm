import Cocoa

/***************

 퀵 정렬
 
 평균 시간 복잡도 ==> O(N * logN)
 최악의 경우 시간 복잡도 ==> O(N^2)
 
***************/

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
    
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}

quickSort([3, 10, 5, 8, 1, 2, 9])
