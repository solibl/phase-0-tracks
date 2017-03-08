// Release 1 & 2
var colors = ["red", "blue", "green","yellow"];
var names = ["Joe", "Bob", "Eric", "Matt"];
var horse = {};
colors.push("black");
names.push("Ed");
console.log(colors);
console.log(names);

if (colors.length == names.length){
	for(var i = 0; i < names.length; i++) {
		var horsecolor = colors[i];
		var horsename = names[i];
		horse[horsename] = horsecolor;
	}
	console.log(horse);
}

// Release 3

function Car(model, year, color){
	console.log("My Car:");
	this.model = model;
	this.year = year;
	this.color = color;

	this.honk = function() { console.log( this.model + " *Honk*"); };
}

var garage = {}

var newCar = new Car("Honda", 1938, "black")
console.log(newCar);
garage.newCar = newCar;
newCar.honk();
var newCar2 = new Car("Acura", 2017, "white")
console.log(newCar2);
garage.newCar2 = newCar2;
newCar2.honk();
var newCar3 = new Car("Ford", 2014, "silver")
console.log(newCar3);
garage.newCar3 = newCar3;
newCar3.honk();

console.log(garage);

// Loops keys and values
model = ["Subaru", "Chevy", "Ford", "Fini"];
year = [1942, 2014, 2302, 1892];
color = ["black", "silver", "white", "green"];

for (var i = 0; i < model.length; i++){
	var newCar = new Car(model[i], year[i], color[i]);
	console.log(newCar);
}