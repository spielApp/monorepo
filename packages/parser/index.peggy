{{
function makeInteger(o) {
    return parseInt(o.join(""), 10);
}

function arg(name, value) {
    return {
        name,
        value,
        type: typeof value
    }
}

function nameReducer(acc, curr) {
    const name = curr.name;
    delete curr.name
    acc[name] = curr
    return acc
}
}}

Commmand = slash name:word args:(space Arguments)? {
    const argsObj = args?.reduce(nameReducer, {}) || {}
    return {
        name,
        args: args || [],
        argsObj
    }
}

Arguments = head:Argument tails:(space @Argument)* {
    return [head, ...tails]
}

Argument = name:word colon ob value:(string / integer) cb {
    return arg(name, value)
}


string = oq text:[^"]+ cq { return text.join("") }
word = $[a-z]i+
_ = [ \t]*

integer "integer" = digits:[0-9]+ { return makeInteger(digits) }
colon "colon" = ":"
ob "Opening Bracket" = "("
cb "Closing Bracket" = ")"
oq "Opening Qoute" = '"'
cq "Closing Quote" = '"'
space "space" = " "
slash "slash" = "/"