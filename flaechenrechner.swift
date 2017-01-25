import Darwin

class CalculateArea {

	var calculatedArea: Double?

	public func circle (_ radius: Double) -> Void {

		self.calculatedArea = pow(radius, 2) * Double.pi

		return

	}

	public func rectangle (_ length: Double, _ width: Double) -> Void {

		self.calculatedArea = length * width

		return

	}

	public func square (_ length: Double) -> Void {

		self.calculatedArea = pow(length, 2)

		return

	}

	public func triangle (_ length: Double, _ height: Double) -> Void {

		self.calculatedArea = 1 / 2 * length * height

		return

	}

	public func getCalculatedArea () -> Double {

		return round(self.calculatedArea! * 100) / 100

	}

}

func readAndCheckDouble (_ input: inout Double?) -> Void {
	repeat {
		input = Double(readLine()!)

		if (input! < 0) {
			print("Eingabe ungültig, bitte erneut eingeben: ")
		}
	} while (input! < 0)

	return
}

print("Quadratische Fläche berechnen\n\n- Kreis\t\t[ 1 ]\n- Rechteck\t[ 2 ]\n- Quadrat\t[ 3 ]\n- Dreieck\t[ 4 ]\n\nEingabe: ")
var input: Int? = Int(readLine()!)

while (input! < 1 || input! > 4) {
	print("Auswahl ist fehlerhaft, bitte erneut eingeben: ")
	input = Int(readLine()!)
}

let area = CalculateArea()

switch input! {
	case 1:
		print("Radius in cm: ")
		var radius: Double?
		readAndCheckDouble(&radius)

		area.circle(radius!)

	case 2:
		print("Länge in cm: ")
		var length: Double?
		readAndCheckDouble(&length)

		print("Breite in cm: ")
		var width: Double?
		readAndCheckDouble(&width)

		area.rectangle(length!, width!)

	case 3:
		print("Seitenlänge in cm: ")
		var length: Double?
		readAndCheckDouble(&length)

		area.square(length!)

	case 4:
		print("Länge der Grundfläche in cm: ")
		var length: Double?
		readAndCheckDouble(&length)

		print("Höhe zur Grundfläche in cm: ")
		var height: Double?
		readAndCheckDouble(&height)

		area.triangle(length!, height!)

	default:
		break
}

print("\nFlächeninhalt: \(area.getCalculatedArea()) cm²")
