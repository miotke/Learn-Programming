// Unknown type
// The unknown type should be used over "any" 

let userInput: unknown
let userName: string

userInput = 5
userInput = "Gus"

if (typeof userInput === "string") { 
    userName = userInput
}

// Never type
function generateError(message: string, code: number): never { 
    throw { message: message, errorCode: code }
}

generateError("Some error", 500)
