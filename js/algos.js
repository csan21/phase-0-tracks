// Pseudo Release 0

// Function takes an array of inputs
// For loop to iterate through array
// If condition to check the input lengths
// Returns the longest input in the array in terms of characters

function longestInput(array) {
	longest = array[0]

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
