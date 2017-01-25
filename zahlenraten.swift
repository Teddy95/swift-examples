import Darwin

let randomNumber: Int = Int(arc4random_uniform(98)) + 2
var input: Int

print("Zahlenraten\n")

repeat {
	print("Geben Sie eine Zahl zwischen 1 und 100 ein: ", terminator: "")
	input = Int(readLine()!)!

	if input != randomNumber {
		if input < randomNumber {
			print("Die eingegebene Zahl ist zu klein!")
		} else {
			print("Die eingegebene Zahl ist zu gross!")
		}
	} else {
		print("Herzlichen Glueckwunsch, die eingegebene Zahl ist richtig!")
	}
} while input != randomNumber
