import UIKit

func solution(_ strings: [String], _ n: Int) -> [String] {
  let resultArray = strings.sorted {
    let first = $0[$0.index($0.startIndex, offsetBy: n)]
    let second = $1[$1.index($1.startIndex, offsetBy: n)]
    
    if (first == second) {
      return $0 < $1
    } else if first < second {
      return first < second
    } else {
      return false
    }
  }
  
  return resultArray
}

func solution2(_ strings: [String], _ n: Int) -> [String] {
  return strings.sorted {
    if $0[n] == $1[n] {
      return $0 < $1
    } else {
      return $0[n] < $1[n]
    }
  }
}

extension String {
  subscript (i: Int) -> String {
    return String(self[index(startIndex, offsetBy: i)])
  }
}

func solution3(_ strings: [String], _ n: Int) -> [String] {
  return strings.sorted(by: <).sorted{ $0.map{String($0)}[n] < $1.map{String($0)}[n]}
}

solution(["sun", "bed", "car"], 1)
solution2(["sun", "bed", "car"], 1)
solution3(["sun", "bed", "car"], 1)
