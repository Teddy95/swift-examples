func isLeapyear (_ year: Int) -> Bool {
	if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
		return true
	} else {
		return false
	}
}

func dateExists (_ day: Int, _ month: Int, _ year: Int) -> Bool {
	if month < 1 || month > 12 || day < 1 {
		return false
	} else {
		switch month {
			case 1, 3, 5, 7, 8, 10, 12:
				if day > 31 {
					return false
				}

			case 4, 6, 9, 11:
				if day > 30 {
					return false
				}

			case 2:
				if isLeapyear(year) && day > 29 || !isLeapyear(year) && day > 28 {
					return false
				}

			default:
				return false
		}
	}

	return true
}

var days: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print("Geben Sie einen Tag an:", terminator: "\t\t")
let day = Int(readLine()!)!
print("Geben Sie einen Monat an:", terminator: "\t")
let month = Int(readLine()!)!
print("Geben Sie ein Jahr an:", terminator: "\t\t")
let year = Int(readLine()!)!

if dateExists(day, month, year) {
	if isLeapyear(year) {
		days[1] += 1
	}

	var amount = 0

	for var i in 0 ..< month - 1 {
		amount += days[i]
	}

	amount += day
	print("Der \(day).\(month).\(year) ist der \(amount). Tag in diesem Jahr!")
} else {
	print("Das eingegebene Datum ist fehlerhaft!")
}
