//import dart standard library
import 'dart:async';

main() async {
	print('About to fetch data...');	
	var result = await get('https://jsonplaceholder.typicode.com/photos');	
	print(result);
}

Future<String> get(String url) {
	return new Future.delayed(new Duration(seconds: 3), () {
		return 'Got the data!';
	});
}

/*
//import dart standard library
import 'dart:async';

main() {
	print('About to fetch data...');
	//instance of '_Future'
	get('http://jsonplaceholder.typicode.com/photos')
		.then((result) {
			print(result);
		});
}

Future<String> get(String url) {
	return new Future.delayed(new Duration(seconds: 3), () {
		return 'Got the data!';
	});
}
*/