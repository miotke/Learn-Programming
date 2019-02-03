function clickForFood() {

var restaurants = ["Taco Bell",
			 "Taco Time",
			 "Wendy's",
			 "Panera",
			 "Chipotle",
			 "Jimmy Johns",
			 "Pizza Studio",
			 "Five Guys",
			 "Whistle Stop",
			 "Burger King",
			 "Taco Del Ray",
			 "Pizza",
			 "Teriyaki",
			 "Jersey Mike's",
			 "Jimmy John's",
			 "Subway",
			 "Habit Burger",
			 "Yukon Grill",
		 	 "Ikea"];

var foodChoice = function () {
    return restaurants[Math.floor(Math.random() * restaurants.length)];
};

var displayRestaurant = foodChoice();

document.getElementById("displayRestaurant").innerHTML = displayRestaurant;
};
