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
}}

Commmand = slash name:word space args:Arguments {
    return {
        name,
        args
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