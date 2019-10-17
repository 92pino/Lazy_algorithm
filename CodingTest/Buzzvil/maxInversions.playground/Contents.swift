import UIKit

func maxInversions(prices: [Int]) -> Int {
    var i = 0
    var j = 0
    var k = 0
    
    let n = prices.count
    var count = 0
    
    while i < n {
        
        let pI = prices[i]
        
        if i + 1 < n {
            
            let pINext = prices[i+1]
            
            if pINext < pI {
                
                j = i + 1
                k = j + 1
                
                while k < n {
                    
                    let pJ = prices[j]
                    let pK = prices[k]
                    
                    if pI > pJ && pJ > pK && i < j && j < k {
                        count += 1
                    }
                    
                    k += 1
                }
            }
        }
        
        i += 1
    }
    
    return count
}
maxInversions(prices: [15, 10, 1, 7, 8])
maxInversions(prices: [4, 1, 3, 2, 5])
