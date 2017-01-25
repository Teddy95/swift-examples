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
				print("\(char) - Ziffer")

			case 65 ... 90:
				print("\(char) - grosser Buchstabe")

			case 97 ... 122:
				print("\(char) - kleiner Buchstabe")

			case 32:
				print("Piep")

			default:
				break
		}
	}
}
