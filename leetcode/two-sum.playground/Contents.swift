import Cocoa

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var result = [Int]()
  for i in 0..<nums.count {
    for j in 0..<nums.count {
      if i < j && nums[i] + nums[j] == target {
        result.append(i)
        result.append(j)
      }
    }
  }
  
  return result
}
twoSum([2, 7, 11 ,15], 9)
