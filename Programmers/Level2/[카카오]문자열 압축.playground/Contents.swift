import Cocoa

// 압축할 수 있는 최대의 길이는 전체 길이의 절반

func solution(_ s: String) -> Int {
  
  var resultCount = s.count
  
  // 문자길이가 1이면 그대로 반환
  if s.count == 1 { return 1 }
  
  // 절반까지 반복
  for idx in 1...s.count / 2 {
    var result = ""
    var indiceStr = ""
    var cnt = 1
    var str = s
  }
  
  return 0
}

solution("aabbaccc")
