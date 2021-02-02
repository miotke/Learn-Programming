// Objects
// const person = { 
//     name: "Andrew",
//     age: 30,
//     alive: true,
//     hobbies: ["sports", "cooking", "skateboarding", "driving"],
//     role: [2, "author"] // tuple, only available in TypeScript
// }

enum Role { 
    ADMIN = 0,
    READ_ONLY = "READ_ONLY",
    AUTHOR = 2    
}

const person = {
    name: "Gus",
    age: 3,
    hobbies: ["Chasing squirrels", "sleeping"],
    role: Role.ADMIN
}

let favoriteActivities: string[]
favoriteActivities = ["Sleeping", "Chasing squirrels", "Eating"]

console.log(person.name)

// Array
const numbers = [1, 2, 3, 4] // Array example

for (const hobby of person.hobbies) { 
    console.log(hobby.toUpperCase())
}

// Loops
for (const i of numbers) { 
    console.log(i)
}

if (person.role === Role.ADMIN) { 
    console.log("Is admin...")
}
