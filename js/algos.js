// Release 0
// Write a function that takes an array of words or phrases and returns the longest word or phrase

// Take first word in array and compare to default longest word
// compare the next word in the list to the current longest word

function longword(bank) {
	var longestword = ""
	for (var i =0; i < bank.length; i++){;
		if (longestword.length < bank[i].length) {
			longestword = bank[i];
		}
	}
	console.log(longestword);
}

// Release 1
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair
// Take in two hashes in a function
// compare the values in both keys of the two hashes
// if at least one of the values of both hashes match, return true
// if none of the values in both hashes match, return false

function checker(person_one, person_two) {
	if ((person_one.name == person_two.name) || (person_one.age == person_two.age))  {
		console.log("true");
	}
	else if ((person_one.name != person_two.name) && (person_one.age != person_two.age))  {
		console.log("false");
	}
}

// Release 2
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length
// Take in the number of words to create at random
// The words lengths are created at random 
// If the word length was already picked, pick another random number
// The letters used will in each word will be randomly selected
// return the full wordbank when finished
// Run the longword function to find the longest word
// Generate 10 arrays in driver code

function wordbankmaker(number_of_words) {
	var wordbank = [];
	var number_picked = [];
	for (var i = 0; i < number_of_words; i++) {
		do {
			var letters_in_word = Math.floor((Math.random() * 10) + 1);
		}	
		while (number_picked.includes(letters_in_word));
		wordbank[i] = changeletter(letters_in_word);
		number_picked[i] = letters_in_word;
	}
	return wordbank;
}

function changeletter(letters_in_word) {
	var word = [];
	for (e = 0; e < letters_in_word; e++) {
		var alphabet = " abcdefghijklmnopqrstuvwxyz";
		var letter_picked = Math.floor(Math.random() * 26) + 1;
		word[e] = alphabet[letter_picked];			
	}
	return word.join("");
}
//  -------------------Driver Code ----------------------
// Release 0
// console.log("Release 0")
// var test1 = ["long phrase","longest phrase","longer phrase"];
// console.log(test1);
// console.log(longword(test1));
// var test2 = ["longest phrase","longer phrase","long phrase"];
// console.log(test2);
// console.log(longword(test2));
// var test3 = ["longer phrase","long phrase","longest phrase"];
// console.log(test3);
// console.log(longword(test3));

// // Release 1
// console.log("Release 1")
// var person_one = {name: "Steven", age: 54};
// var person_two = {name: "Tamir", age: 53};
// console.log(person_one);
// console.log(person_two);
// checker(person_one, person_two);
// var person_one = {name: "Brian", age: 54};
// var person_two = {name: "Brian", age: 53};
// console.log(person_one);
// console.log(person_two);
// checker(person_one, person_two);
// var person_one = {name: "Steven", age: 54};
// var person_two = {name: "Tamir", age: 54};
// console.log(person_one);
// console.log(person_two);
// checker(person_one, person_two);

// Release 2
for (counter = 1; counter < 11; counter++) {
	var wordmaker = Math.floor(Math.random() * 10) + 1;
	console.log( "Word " + counter );
	var wordbank = wordbankmaker(wordmaker);
	console.log(wordbank);
	longword(wordbank);
}