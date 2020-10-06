import Cocoa

func addTwoNumbers(_ l1: [Int], _ l2: [Int]) -> [Int] {
  let r1 = Int(Array(l1.reversed()).map { String($0)}.joined())!
  let r2 = Int(Array(l2.reversed()).map { String($0)}.joined())!
  
  var result = String(r1 + r2).map { String($0) }.map { Int($0)! }
  
  return result
}
addTwoNumbers([2, 4, 3], [5, 6, 4])
