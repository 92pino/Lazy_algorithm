import Cocoa

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
  
  var result: [[Int]] = []
  
  for i in 0..<arr1.count {
    var tmp: [Int] = []
    for j in 0..<arr1[i].count {
      tmp.append(arr1[i][j] + arr2[i][j])
    }
    result.append(tmp)
  }
  
  return result
}

solution([[1,2], [2,3]], [[3,4], [5,6]])



// 신박한 풀이 생각지도 못했다...
func solution2(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
  print(zip(arr1, arr2).map{zip($0, $1).map{$0+$1}})
  return []
}
solution2([[1,2], [2,3]], [[3,4], [5,6]])
