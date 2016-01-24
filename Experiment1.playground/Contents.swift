//: Playground - noun: a place where people can play

import UIKit

let listNumbers: [Int] = [1,2,4,8,10,20,30,2,1,10];

func numberOfOcurrences(array: [Int]) -> [(Int,Int)] {
    
    var ocurrences: [Int: Int] = [:]
    var results: [(Int,Int)] = []
    
    for number in array {
        
        if let innerValue = ocurrences[number] {
            
            ocurrences[number] = innerValue + 1
        }
        else  {
            ocurrences[number] = 0
        }
    }
    
    for key in ocurrences.keys {
        
        ocurrences[key].map {
            results.append((key,$0))
        }
    }

    return results
}

numberOfOcurrences(listNumbers)
