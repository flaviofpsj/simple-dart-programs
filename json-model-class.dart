//import dart standard library
import 'dart:convert';

void main() {
	//dart doesn't differentiate id as integer from url as string without a model class
	var rawJson = '{"id": 1, "url": "http://jsonplaceholder.typicode.com/photos"}';
	var parsedJson = json.decode(rawJson);
	//map data structure
	/*
	print(parsedJson['url']); //print(parsedJson);
	*/
	//instance of a model class and now dart differentiates id as integer from url as string
	/*
	var imageModel = new ImageModel(parsedJson);
	*/
	//new instance
	var imageModel = new ImageModel.fromJson(parsedJson);
	print(imageModel.url); //print(imageModel);
}

//ImageModel class
class ImageModel {
	//objects
	int id;
	String url;
	//default constructor
	ImageModel(this.id, this.url);
	//named constructor
	ImageModel.fromJson(parsedJson) {
		id = parsedJson['id'];
		url = parsedJson['url'];
	}
}