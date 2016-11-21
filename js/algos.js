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

// Driver Release 0
array = ["long phrase","longest phrase","longer phrase"]
console.log(longestInput(array))
array = ["Hello there people", "what are you doing", "what am i doing"]
console.log(longestInput(array))
