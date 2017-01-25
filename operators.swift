/**
 * Power operator
 */

precedencegroup powerPrecedence {
	associativity: left
	higherThan: MultiplicationPrecedence
}

infix operator ^^ : powerPrecedence
func ^^ (base: Double, exp: Double) -> Double {
	return pow(base, exp)
}


/**
 * Root operator
 */

precedencegroup rootPrecedence {
	associativity: left
	higherThan: MultiplicationPrecedence
}

infix operator √ : rootPrecedence
func √ (lvl: Int, square: Double) -> Double {
	return square ^^ (1 / Double(lvl))
}


/**
 * Squareroot operator
 */

prefix operator √
prefix func √ (square: Double) -> Double {
	return sqrt(square)
}


/**
 * Increase operator (++n)
 */

prefix operator ++
prefix func ++ (_ n: inout Int) -> Int {
	n += 1

	return n
}


/**
 * Decrease operator (--n)
 */

prefix operator --
prefix func -- (_ n: inout Int) -> Int {
	n -= 1

	return n
}


/**
 * Increase operator (n++)
 */

postfix operator ++
postfix func ++ (_ n: inout Int) -> Int {
	let callback: Int = n
	n += 1

	return callback
}


/**
 * Decrease operator (n--)
 */

postfix operator --
postfix func -- (_ n: inout Int) -> Int {
	let callback: Int = n
	n -= 1

	return callback
}
