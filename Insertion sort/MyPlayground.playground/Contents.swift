import UIKit

var numbers = [Int]()

for _ in 0..<100 {
    numbers.append(Int.random(in: 0..<10000))
}

func insertionSort(array: [Int]) -> [Int] {
    var arr = array
    
    for index in 1..<arr.count {
        var bound = index
        
        while bound > 0 && arr[bound] < arr[bound - 1] {
            arr.swapAt(bound, bound - 1)
            bound -= 1
        }
    }
    
    return arr
}


insertionSort(array: numbers)
