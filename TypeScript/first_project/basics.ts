// -- Core types --  
// number = 1, 5.3, -10 does not know about Int vs Floats vs Doubles
// string = 'Hi', "Hi", `Hi`
// boolean = true or false
// object = {age: 30}



function add(n1: number, n2: number, showResult: boolean, resultPhrase: string) { 
    if (showResult) { 
        console.log(resultPhrase + n1 + n2)
    } else { 
        return n1 + n2
    }
}

function subtract(n1: number, n2: number) { 
    return n1 - n2
}

const number1 = 5
const number2 = 3.31
const showResult = true
const resultPhrase = "Result: "


const result = add(number1, number2, showResult, resultPhrase)
const subResult = subtract(number1, number2)

console.log(result)
console.log(subResult)
