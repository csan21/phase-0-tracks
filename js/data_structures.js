// Release 0

var horseColors = ["blue", "red", "yellow", "green"]

var horseNames = ["Edd", "Bob", "Bill", "Joe"]

horseColors.push("purple")
horseNames.push("Jim")

// console.log(horseColors)
// console.log(horseNames)

// Release 1

var horse = {horseNames: horseColors};

for (var i = 0; i < horseNames.length; i++) {
	console.log(horseNames[i] + " is " + horse.horseNames[i]);
}

// console.log(horse.horseNames)
// console.log(horse.horseColors)