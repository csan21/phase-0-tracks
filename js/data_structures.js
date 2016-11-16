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

// Release 2

function Car(make, model, year, isGoodCar) {

	this.make = make;
	this.model = model;
	this.year = year;
	this.isGoodCar = isGoodCar;
	console.log("Our new car:", this.make, this.model, this.year);

	this.vroom = function() { console.log("vrooOoom!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var firstCar = new Car("Acura", "RSX", 2001, true)
console.log(firstCar)
console.log("This car is fast:")
firstCar.vroom();
console.log("-------")

var secondCar = new Car("Subaru", "WRX", 2002, true)
console.log(secondCar)
console.log("This car is faster:")
secondCar.vroom();
console.log("-------")

var thirdCar = new Car("Mitsubishi", "Evolution", 2007, true)
console.log(thirdCar)
console.log("This car is fastest:")
thirdCar.vroom();
console.log("-------")

