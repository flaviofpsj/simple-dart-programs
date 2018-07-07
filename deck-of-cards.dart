void main() {
	//instance of Deck class
	var deck = new Deck();
	//print deck list
	print(deck);
	//randomize deck list
	deck.shuffle()
	print(deck);
	//print deck list with specific suit
	print(deck.cardsWithSuit('Spades'));
	//print deck sublist
	print(deck.deal(5));
	//print new deck list later deck sublist
	print(deck);
	//print a list whitout this card
	deck.removeCard('Ace', 'Diamonds');
	print(deck);
}

//Deck class
class Deck {
	//List cards field
	List<Card> cards = [];
	//constructor function
	Deck() {
		//list of ranks
		var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
		//list of suits
		var suits = ['Diamonds', 'Clubs', 'Spades', 'Hearts'];
		//loops of lists
		for (var mySuit in suits) {
			for (var myRank in ranks) {
				//instance of Card class
				var card = new Card(
					//named parameters, no matter the order here
					rank: myRank,
					suit: mySuit
				);
				//add card with rank an suit to cards list
				cards.add(card);
			}
		}
	}
	//toString method, return a string list of cards
	toString() {
		return cards.toString();
	}
	//shuffle method, return a random list of cards
	shuffle() {
		return cards.shuffle();
	}
	//cardsWithSuit method, return all cards with a determinate suit
	cardsWithSuit(String suit) {
		return cards.where((card) => card.suit == suit); //arrow function is a implicite return
	}
	//deal method, return a sublist of cards
	deal(int handSize) {
		//create a new list from 0 to handSize
		var hand = cards.sublist(0, handSize);
		//the new cards list initiate from handSize to end
		cards = cards.sublist(handSize);
		return hand;
	}
	//removeCard method, remove a specific card from this list and create a new list without this card
	removeCard(String rank, String suit) {
		return cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
	}
}

//Card class
class Card {
	//String rank field
	String rank;
	//String suit field
	String suit;
	//constructor function, curly braces pointing to parameters, print in this order
	Card({this.rank, this.suit});
	//toString method, return a list of rank and suit
	toString() {
		return '$rank of $suit';
	}
}

/*
Deck program
1 - Make a deck (Create a new deck of playing cards)
2 - printCards (Print all the cards of this deck) {deck method}
3 - Shuffle (Shuffle the cards in this deck) {deck method}
4 - cardsWithSuit (Find all the cards with given suit) {deck method}
5 - Deal (Deal out some number of cards from this deck) {deck method}
6 - removeCard (Remove a specific card from the deck) {deck method}
*/

/*
Steps
1 - Create a dart 'class' to represent each type of 'thing'
2 - Create a 'field' on each class to hold that pieace of data
3 - Add methods to represent each interaction
4 - Write code outside of a class to get classes to interact
*/

/*
cardsWithSuit(String suit) {
	return cards.where((card) {
		return card.suit == suit
	});
}

its the same thing as...

cardsWithSuit(String suit) {
	return cards.where((card) => card.suit == suit);
}
*/