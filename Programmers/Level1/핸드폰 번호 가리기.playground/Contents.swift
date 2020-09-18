import Cocoa

func solution(_ phone_number: String) -> String {
  let arr = String(phone_number).map { $0 }
  let length = arr.count
  var str = ""
  for (i, j) in arr.enumerated() {
    if i < length - 4 {
      str += "*"
    } else {
      str += String(j)
    }
  }
  
  return str
}

solution("01033334444")
