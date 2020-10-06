import Cocoa

//func solution(_ clothes:[[String]]) -> Int {
//  var dic = [String: Int]()
//  for i in clothes {
//    dic.updateValue((dic[i[1]] == nil ? 2 : dic[i[1]]! + 1), forKey: i[1])
//  }
//
//  let t = dic.values.reduce(1, { $0 * $1 }) - 1
//
//  print(t)
//
//  return 0
//}

func solution(_ clothes:[[String]]) -> Int {
  let result = Set(clothes.compactMap ({ $0[1] })).map { category in
    return clothes.filter { $0[1] ==  category}.count + 1
  }
  
  return result.reduce(1, { $0 * $1 }) - 1
}

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])
