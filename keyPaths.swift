struct crap {
    var x: Int = 0;
    var y: Int = 0;
}

struct shite {
    var crud = crap();
    var z: Int = 0;
}

var first = shite();
var wpath: WritableKeyPath = \shite.crud.x; // basically acts as an indexing alias
var path: KeyPath = \shite.crud.x; // this KeyPath will be read only

first[keyPath: wpath] = 3;

print(first[keyPath: path]);
