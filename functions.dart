void main() {
	//4 - declare name as a String variable and assign the function myName to it
	var name = myName();
	//5 - declare number as an int variable and assign the function numberName to it with name as argument
	var number = numberName(name); //var number = name.length;
	//6 - print the single variable and composite variable
	print('$name have ${name.length} letters');
	//7 - print the two single variables
	print('$name have $number letters');
	//8 - execute the printName function
	printName(name);
}

//1 - build the String function
String myName() {
	return 'Flavio';
}

//2 - build the int function passing a String as argument
int numberName(String name) {
	return name.length;
}

//3 - build the void function passing a String as argument
void printName(String string) {
	var name = string;
	var number = name.length;
	print('$name have $number letters');
}

/*
dynamic receive int, double or String
/*