//
//  121. Best Time to Buy and Sell Stock.swift
//  leetcodeSwiftC
//
//  Created by earl on 22.05.2023.
//

import Foundation


//[7,1,5,3,6,4]
class BestTimeToBuyAndSellStock {
    
    
    // solved
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
            var best = 0, current = 0
            for index in 1..<prices.endIndex {
                current = max(0, current + prices[index] - prices[index-1])
                best = max(best, current)
            }
            return best
    }
    
    // time limit
//    func maxProfit(_ prices: [Int]) -> Int {
//        if prices.isEmpty {
//            return 0
//        }
//        var currentProfit = 0
//        var currentPrice = prices[0]
//        for i in prices {
//            if i <= currentPrice {
//                currentPrice = i
//                var startPos = prices.index(of: i)!
//                print("start pos -> \(startPos)")
//                for j in startPos..<prices.count {
//                    if prices[j] - currentPrice > currentProfit {
//                        currentProfit = prices[j] - currentPrice
//                    }
//                }
//            }
//        print(currentProfit)
//        print(currentPrice)
//        }
//        return currentProfit
//    }
}
