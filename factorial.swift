func factorial(_ x: UInt64) -> UInt64 {
	guard x > 1 else {
		return 1;
	}
	return x*factorial(x - 1);
}

precondition(CommandLine.argc == 2, "Only two arguments must be provided (including exec. name).");

guard let number = UInt64(CommandLine.arguments[1]) else {
	fatalError("Argument was non-numeric.");
}

print(factorial(number));

