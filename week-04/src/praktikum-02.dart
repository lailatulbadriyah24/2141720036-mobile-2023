void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

var names1 = <String>{};
names1.add('Lailatul Badriyah');
names1.add('2141720036');
Set<String> names2 = {}; // This works, too.
names2.addAll(['Lailatul Badriyah', '2141720036']);
// var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
// print(names3);
}



