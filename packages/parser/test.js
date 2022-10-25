const { parse } = require("./index")
const command = process.argv.slice(2).join(" ")
const commandData = parse(command)
console.log(commandData)