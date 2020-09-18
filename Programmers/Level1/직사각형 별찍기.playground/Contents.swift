import Cocoa

var str = "5 3"
let arr = str.split(separator: " ").map { Int($0)! }
let (a, b) = (arr[0], arr[1])

for _ in 0..<b {
  for _ in 0..<a {
    print("*", terminator: "")
  }
  print("")
}


// 간단한 풀이
print(String(repeating: String(repeating: "*", count: a) + "\n", count: b))
