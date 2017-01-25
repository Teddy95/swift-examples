func bubblesort (_ numberCollection: inout [Int]) -> Void {
	var sorted: Int = 0

	while sorted == 0 {
		sorted = 1

		for var i in 0 ..< numberCollection.count - 1 {
			if numberCollection[i + 1] < numberCollection[i] {
				swap(&numberCollection[i], &numberCollection[i + 1])
				sorted = 0
			}
		}
	}

	return
}

func swap (_ x: inout Int, _ y: inout Int) -> Void {
	let temp: Int = x
	x = y
	y = temp

	return
}

/* Main program */
var numbers = [Int]()
var input: Int?
print("Geben Sie solange jeweils eine Zahl ein, bis Sie die Zahleneingabe mit einer 0 beenden!\n")

repeat {
	print("Zahl eingeben: ", terminator: "")
	input = Int(readLine()!)

	if input != 0 {
		numbers.append(input!)
	}
} while input != 0

if numbers.count > 0 {
	bubblesort(&numbers)
	print("\nSortierte Zahlenkette:")

	for number in numbers {
		print(number)
	}
} else {
	print("Es wurden keine Zahlen eingegeben!")
}
