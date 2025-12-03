import UIKit

var greeting:String = "Hello, playground";
let symbol:Character = "S";
var boolean:Bool = true;
var comparitions:Bool = 10>11 || !(10<11);
//print(10>11 || !(10<11))


//Functions
func firstFunction(name:String) -> String {
    return "Hello " + name;
}
func secondFunction(_ name:String) -> String {
    return "Hello " + name;
}

//print(firstFunction(name:"Sebas"))
//print(secondFunction("Sebas"))


//Switch
func firstSwitch(_ number:Int) {
    switch number {
    case 1, 2: print("First option");
    case 3, 4: print("Second option");
    case 5, 6: print("third option");
    case 7...10: print("fourth option");
    default : print("No match");
    }
}

//firstSwitch(8);

//Arrays
var arr:[Int] =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

//Filter
//print(arr.filter{(number) -> Bool in number>8 ? true:false;});
//print(arr.filter{$0>2 && $0<10})'

//Loops
for num in arr {
//    print(num+1);
}


//Tuples and dictionaries
var tuple = ("Sebas", 24, 1.90);
//print(tuple.1);

var dictionary:[String: Any] = ["Name":"Sebas", "Age":24, "Height":1.90, "IsStudent":true]
var name:String = dictionary["Name"] as! String;
var age:Int = dictionary["age"] as? Int ?? 27;

//print(name);
//print(age);


//Nullability
var optionalString:String? = nil;
var optionalName:String? = "Sebas";

func nilEg1(_ text:String) {
    print(text);
}
func nilEg2(_ text:String?) {
    guard let message = text else {
        print("No text provided");
        return;
    }
    print(message);
}

//nilEg1("Hello");
//nilEg1(optionalString ?? "optional value");
//nilEg2(optionalString ?? "optional value");
//nilEg2(optionalString);

// Classes and struct
class Person {
    var name:String;
    var age:Int;
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greetings(){
        print("Hello my name is \(name) and I am \(age) years old")
    }
}

var person1:Person = Person(name: "Sebas", age: 24);
person1.greetings();


struct PersonStruct{
    var name:String;
    var age:Int;
    
    func greetings(){
        print("Hello my name is \(name) and I am \(age) years old")
    }
}

var struct1:PersonStruct = PersonStruct(name: "Sebas", age: 24);
struct1.greetings();
