import Foundation

func proporcoes(_ array: [Int]) -> [Double] {
    var countPos: Int = 0
    var countNeg: Int = 0
    var countZer: Int = 0
    for i in 0..<array.count {
        if array[i] > 0 {
            countPos += 1
        }else if array[i] < 0 {
            countNeg += 1
        }else{countZer += 1}
    }
    let count = countPos + countNeg + countZer
    return [Double(countPos) / Double(count), Double(countNeg) / Double(count), Double(countZer) / Double(count)]
}