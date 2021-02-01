// Objects
// const person = { 
//     name: "Andrew",
//     age: 30,
//     alive: true,
//     hobbies: ["sports", "cooking", "skateboarding", "driving"],
//     role: [2, "author"] // tuple, only available in TypeScript
// }
var Role;
(function (Role) {
    Role[Role["ADMIN"] = 0] = "ADMIN";
    Role["READ_ONLY"] = "READ_ONLY";
    Role[Role["AUTHOR"] = 2] = "AUTHOR";
})(Role || (Role = {}));
var person = {
    name: "Gus",
    age: 3,
    hobbies: ["Chasing squirrels", "sleeping"],
    role: Role.ADMIN
};
var favoriteActivities;
console.log(person.name);
// Array
var numbers = [1, 2, 3, 4]; // Array example
for (var _i = 0, _a = person.hobbies; _i < _a.length; _i++) {
    var hobby = _a[_i];
    console.log(hobby.toUpperCase());
}
// Loops
for (var _b = 0, numbers_1 = numbers; _b < numbers_1.length; _b++) {
    var i = numbers_1[_b];
    console.log(i);
}
if (person.role === Role.ADMIN) {
    console.log("Is admin...");
}
