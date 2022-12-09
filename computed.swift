import Foundation;

struct crap {
    var x: Int;
    var y: Int;
    var z: Double {
        get {
            return Double(x*y);
        }
        set {
            z = 0.5*newValue;
        }
    }
}
var s = crap(x: 4, y: 8);
print(s.z);
s.z = 12;
print(s.z);
