import Darwin

func getAvg (_ temperatures: [Double]) -> Double {
	var avg: Double = 0

	for temperature in temperatures {
		avg += temperature
	}

	avg /= Double(temperatures.count)

	return avg
}

let amount: Int = 4
var temperatures = [Double]()
var input: Double?

for var i in 0 ..< amount {
	print("Temperatur eingeben:", terminator: " ")
	
	repeat {
		input = Double(readLine()!)
	} while input == nil

	temperatures.append(input!)
}

print("\nMittelwert: \(getAvg(temperatures))")
print("Minimum: \(temperatures.min()!)")
print("Maximum: \(temperatures.max()!)")
