import UIKit

let array = [1,2,3,4,5,8,10,25,26,55,56,77,80,100]

func binarySearch(array: [Int], searching element: Int)-> Int? {
    var lowestIndex = 0
    var highestIndex = array.count
    
    while lowestIndex < highestIndex {
        let midIndex = lowestIndex + (highestIndex - lowestIndex) / 2
        
        if array[midIndex] == element {
            return midIndex
        } else if array[midIndex] > element {
            highestIndex = midIndex
        } else {
            lowestIndex = midIndex + 1
        }
    }
    return nil
}

func binaryRecursivSerc(array: [Int], range: Range<Int>, element: Int) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if array[midIndex] > element {
            return binaryRecursivSerc(array: array, range: range.lowerBound..<midIndex, element: element)
        } else if array[midIndex] < element {
            return binaryRecursivSerc(array: array, range: midIndex + 1 ..< range.upperBound, element: element)
        } else {
            return midIndex
        }
    }
}

binarySearch(array: array, searching: 4)
binarySearch(array: array, searching: 546)

binaryRecursivSerc(array: array, range: 0..<array.count, element: 4)
binaryRecursivSerc(array: array, range: 0..<array.count, element: 546)
