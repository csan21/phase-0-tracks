// Pseudo Release 0

// Function takes an array of inputs
// For loop to iterate through array
// If condition to check the input lengths
// Returns the longest input in the array in terms of characters

function longestInput(array) {
	var longest = array[0]

	for (var i = 1; i < array.length; i++) {
		if (array[i].length > longest.length ) {
			longest = array[i];
		}
		return longest 
	}
}

// Release 1

// Function takes two objects
// If objects share a key value pair, returns true
// Else, returns false

function checkObjects(object1, object2) {
	if (object1.age == object2.age) {
		return true
	}
	else {
		return false
	}
}

// Release 3

// Function takes an integer for length
// Builds and returns an array of strings of the given length (3 returns an array of 3 random words)
// Words must be have at least 1 letter and at most 10 letters

function randomWords(length) {
    var words = [];
    var possible = "abcdefghijklmnopqrstuvwxyz";

    for (var i = 0; i < length; i++) {
    	var word = ''
    	var word_length = (Math.floor(Math.random() * 10) + 1);
    	for (var count = 0; count < word_length; count++) {
        	word += possible.charAt(Math.random() * possible.length);
    	}
    	words[i] = word;
    }
    return words
}


// Driver Release 0
array = ["long phrase","longest phrase","longer phrase"]
console.log(longestInput(array))

array = ["Hello there people", "what are you doing", "what am i doing"]
console.log(longestInput(array))

// Driver Release 1
var person1 = {name: "Steven", age: 54}
var person2 = {name: "Tamir", age: 54}
console.log(checkObjects(person1, person2))

var person1 = {name: "Nevets", age: 60}
var person2 = {name: "Rimat", age: 54}
console.log(checkObjects(person1, person2))

// Driver Release 2
// part 1
console.log(randomWords(10))

// part 2
for (var feed = 0; feed < 10; feed++) {
	feedArray = randomWords(10)
	console.log(feedArray)
	longestInput(feedArray)
	console.log("Longest input: " + longestInput(feedArray))
}

