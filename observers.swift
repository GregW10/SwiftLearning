struct Point {
	var x: Double = 0;
	var y: Double = 0;
}

struct Rectangle {
	var width: Double = 0;
	var height: Double = 0;
	var origin: Point = Point() {
		willSet {
			self.origin.x = newValue.x < 0 ? 0 : newValue.x;
			self.origin.y = newValue.y < 0 ? 0 : newValue.y;
		}
		didSet {
			print("Did set...");
		}
	}
	var middle: Point {
		mutating get {
			return Point(x: self.origin.x + self.width/2, y: self.origin.y + self.height/2);
		}
		mutating set {
			origin.x = newValue.x < 0 ? 0 : newValue.x;
			origin.y = newValue.y < 0 ? 0 : newValue.y;
		}
		// willSet {
		// 	print("Setting... \(newValue)");
		// }
		// didSet {
		// 	print("No longer... \(oldValue)");
		// }
	}
}

var p = Point();
var rect = Rectangle(width: 10, height: 10);
print(rect.middle.x);
rect.origin = Point();


print("Hello, world!");

var x: Int = 5;
var y: Double = 4.3;

var arr: [Int] = [Int]();
var array: Array<Int> = Array<Int>(repeating: 3, count: 7);

// print("arr len: \(arr.count), isEmpty: \(arr.isEmtpy)");
print("array: \(arr)");

print("x: \(x)");

for element in array {
	print(element);
}

print(CommandLine.arguments.count);

var s: Int = 5;
let five = String(s);

print(five);

