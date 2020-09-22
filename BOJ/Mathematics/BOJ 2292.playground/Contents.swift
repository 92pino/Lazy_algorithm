import UIKit

/*
 1       (1개)
 2...7   (6개)
 8...19  (12개)
 20...37 (18개)
 ....
*/

func boj2292(_ num: Int) {
  var upper = 1
  var count = 0
  
  while true {
    upper = upper + (count * 6)
    if num <= upper { break }
    count += 1
  }
  
  print(count + 1)
}
boj2292(13)
