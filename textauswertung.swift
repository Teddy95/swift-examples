var zeichenkette: String?
var upper, lower, digit, extra: Int
upper = 0
lower = 0
digit = 0
extra = 0

print("Geben Sie eine Zeichenkette ein:", terminator: " ")
zeichenkette = readLine()

if zeichenkette != nil {
	for char in zeichenkette!.characters {
		var scalars = String(char).unicodeScalars
		var val = scalars[scalars.startIndex].value

		switch val {
			case 48 ... 57:
				digit += 1

			case 65 ... 90:
				upper += 1

			case 97 ... 122:
				lower += 1

			default:
				extra += 1
		}
	}
}

print("\(upper) Grossbuchstaben, \(lower) Kleinbuchstaben, \(digit) Zahlen und \(extra) Sonderzeichen!");
