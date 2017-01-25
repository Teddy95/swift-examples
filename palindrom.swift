var zeichenkette: String?
var palindrom: Bool = false

print("Geben Sie ein Wort ein:", terminator: " ")
zeichenkette = readLine()

if zeichenkette != nil {
	if zeichenkette!.lowercased() == String(zeichenkette!.characters.reversed()).lowercased() {
		palindrom = true
	}
}

if palindrom == true {
	print("Das Wort ist ein Palindrom!\n\(zeichenkette!) == \(String(zeichenkette!.characters.reversed()))")
} else {
	print("Das Wort ist kein Palindrom!\n\(zeichenkette!) != \(String(zeichenkette!.characters.reversed()))")
}
