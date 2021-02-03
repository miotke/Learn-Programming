// Functions Return Types and Void

function add(n1: number, n2: number): number { 
    return n1 + n2
}

function printResult(num: number): void {
    console.log("Result:" + num)
}

function AddAndHandle(n1: number, n2: number, cb: (num: number) => void) { 
    const result = n1 + n2
    cb(result)
}

printResult(add(5, 12))

// undefined is a legit type in JavaScript/TypeScript
let someValue: undefined

// Function types
let combinedValues: (a: number, b: number) => number
combinedValues = add
console.log(combinedValues(8, 1))

AddAndHandle(10, 23, (result) => { 
    console.log(result)
})