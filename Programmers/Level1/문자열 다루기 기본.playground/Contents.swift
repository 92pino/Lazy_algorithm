import UIKit

func solution(_ strings: [String], _ n: Int) {
  var sort = strings.sorted(by: <).sorted{ $0.map{String($0)}[n] < $1.map{String($0)}[n] }
  print(sort)
}

solution(["sun", "bed", "car"], 1)
