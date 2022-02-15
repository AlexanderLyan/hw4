import UIKit

//1. Массив из кортежей - возвести Int в квадрат

let tupleArray = [(1, "x"), (4, "y"), (6, "a")]
let squareInt = tupleArray.map { element in
    (element.0 * element.0 , element.1)
}

print(squareInt) // [(1, "x"), (16, "y"), (36, "a")]

// 2. отфильтровать только четные Int

let squareNums = squareInt
let evenNums = squareNums.filter { element in
    return element.0 % 2 == 0
}

print(evenNums) // [(16, "y"), (36, "a")]


// 3. упорядочить по строкам по возрастанию

var sortList = squareInt
let sort = sortList.sorted { left, right in
    return left.1 < right.1
    
}

print(sort) // [(36, "a"), (1, "x"), (16, "y")]
