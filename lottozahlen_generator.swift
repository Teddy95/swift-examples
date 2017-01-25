import Darwin

var lottozahlen = [Int]()
var generated: Int

for var i in 0 ... 6 {
	if i != 0 {
		repeat {
			generated = Int(arc4random_uniform(49)) + 1
		} while (lottozahlen.contains(generated))

		lottozahlen.append(generated)
	} else {
		lottozahlen.append(Int(arc4random_uniform(49)) + 1)
	}
}

print("Gezogene Lottozahlen:", terminator: " ")

for var i in 0 ..< lottozahlen.count {
	if i == lottozahlen.count - 1 {
		print(lottozahlen[i])
	} else {
		print(lottozahlen[i], terminator: ", ")
	}
}
