void main() {
	//instace and assign a name to firstName object
	var person = new Person('Flavio'); //Flavio = this.firstName
	/*
	var person = new Person();
	person.firstName = 'Flavio';
	*/
	//execute the method in person instance of firstName object
	person.printName();
}

//class
class Person {
	//object or field
	String firstName;
	//constructor function
	Person(this.firstName); //this.firstName = firstName
	//method
	printName() {
		print(firstName);
	}
}

/*
All classes have to be instantiated
Constructor have the same name as the class
*/