import UIKit

var greeting = "Hello, playground"


//1
var animals = ["dog", "lion", "bear"]
let count = animals.count

animals.swapAt(0, count-1)

print(animals[0])


//2
var fruits = ["mango", "kiwi", "banana", "orange", "apple", "lemon", "grape"]
let count1: Int = Int((Double(fruits.count)/2).rounded()) // rounded this number so that 4 could be removed if there were 7 elements in an array
var k = 0

while k < count1 {
    fruits.remove(at: k)
    k+=1
}

for fruit in fruits {
    print(fruit)
}


//3
var allNumbers = [0,1,2,3,4,5,6,7,8,9,10]

var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for number in allNumbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}

for odd in oddNumbers {
    print(odd, terminator: " ")
}
print()
for even in evenNumbers {
    print(even, terminator: " ")
}


//4
var doublesArray = [1.5, 2.7, 3.8, 14.27, 4.6, 7.8, 10.8]
var n = 0
var highestNumber: Double = 0.0

while n < doublesArray.count {
    if doublesArray[n] > highestNumber {
        highestNumber = doublesArray[n]
        n+=1
    } else {
        n+=1
    }
}

print(highestNumber)


//5

var array1 = [8, 4, 9, 9, 0, 2]
var array2 = [1, 0, 9, 2, 3, 7, 0, 1]
var newArray: [Int] = []


for element1 in array1 {
    newArray.append(element1)
}

for element2 in array2 {
    newArray.append(element2)
}

var newCount = newArray.count

for a in 0..<newCount {
    for b in 0..<newCount - a - 1 {
        if newArray[b] > newArray[b+1] { // next time we check if another element is bigger and we need to swap or not
            let c = newArray[b]
            newArray[b] = newArray[b+1]
            newArray[b+1] = c // b and b+1 swaps the places
        }
    }
}

print("Sorted array: \(newArray)")

//6
var string = "chocolate"
var characterSet = Set<Character>()


for char in string {
    characterSet.insert(char)
}

if (characterSet.count == string.count){
    print("Every character in this set is unique")
} else {
    print("Some characters were duplicates in this set")
}

//7
var set1 = Set([1,2,3,3,4,5,6,7,7,4,6])
var set2 = Set([10,5,4,2,5,6,11,15,3,9])

let unionSet = set1.union(set2)
print(unionSet) // leaves unique elements from both and removes duplicates

let intersectionSet = set1.intersection(set2)
print(intersectionSet) // leaves what is the same

let differenceSet = set1.subtracting(set2)
print(differenceSet) // leaves the ones in first set and not in the second

//8
var stringSet1 = Set(["dog", "cat", "mouse", "bird"])
var stringSet2 = Set(["dog", "cat", "mouse", "bird", "lion"])
let newDifferenceSet = stringSet1.subtracting(stringSet2)

if newDifferenceSet.isEmpty {
    print("First set is subset of the second")
} else {
    print("First set isn't subset of the second")
}

//second solution
if stringSet1.isSubset(of: stringSet2){
    print("First set is subset of the second")
} else {
    print("First set isn't subset of the second")
}

//9
let randomArray = [4,5,8,9,5,1,3,4,5,6,7,8,3,5,2]

let randomSet = Set(randomArray)

if randomArray.count == randomSet.count {
    print("All elements are unique")
} else {
    print("There are duplicates")
}

//10
var movies = Dictionary <String, Double>()

movies ["Breathless"] = 7.7
movies ["400 blows"] = 8.1
movies ["Stolen kisses"] = 7.6
movies ["Contempt"] = 7.5
movies ["Claire's knee"] = 7.5

let sum = movies.values.reduce(0,+)

let average = sum / Double (movies.count)

print("Average IMDB score of some of my favorite movies is: \(average)")

