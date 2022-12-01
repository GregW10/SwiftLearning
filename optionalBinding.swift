prefix operator++;

prefix func++<T: BinaryInteger>(x: inout T) -> T {
    x += 1;
    return x;
}

prefix operator--;

prefix func--<T: BinaryInteger>(x: inout T) -> T {
    x -= 1;
    return x;
}

var x: Int? = 5;

if let x {
    print(x);
}

var y: Double?;

print(y ?? "no y!");

var names: (String, String, String) = (one: "John", two: "Jake", three: "Paul");

switch names {
case (let x, _, "Larry") where !x.hasPrefix("J"):
    print("First was: \(x)");
case (let x, "Jake", _):
    print("Matched middle, x is: \(x)");
default:
    print("default case");
}

x = x ?? 10; // nil-coalescing operator

repeat {
    print("x: \(x!)");
} while (--x! > 0)

var array: [Int] = [1, 2, 3];
var array2 = [Int](repeating: 5, count: 10);

for val in array {
    print(val);
}

for val in array2 where val != 4 {
    print(val);
}

var name: String = "Greg went on a walk.";

for letter in name where letter != "w" {
    print(letter);
}

func shite(x: Int?) {
    guard let unwrappedX = x else {
        print("x was nil");
        return;
    }
    print(unwrappedX);
}

shite(x: x);

func multiply<T: Numeric>(args: T...) -> T {
    var product: T = 1;
    for val in args {
        product *= val;
    }
    return product;
}

var prod: Int = multiply(args: 5, 4, 3, 2, 1);
print("prod: \(prod)");

x = 11;
if let x, x < 10 {
    fatalError("x was less than 10");
}

// precondition(x! < 10, "x was not less than 10!");

array = Array<Int>(stride(from: 40, to: 51, by: 1));
array2 = Array<Int>(stride(from: 100, through: 200, by: 10));
let array3 = Array<Int>(repeatElement(10, count: 4));
let tuple1 = zip(array, array2);

for (one, two) in tuple1 {
    print("ha: \(one), ba: \(two)");
}

func doSomethingWith2Ints(one: Int, two: Int, function: (Int, Int) -> Int) -> Int {
    return function(one, two);
}

print(doSomethingWith2Ints(one: 4, two: 6, function: {$0 * $1}));
