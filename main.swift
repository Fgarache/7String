let someString = "string 1"
let multiString = """
  hola mundo 1

  hola mundo 2

  holamundo 3


"""
print(multiString)

let cita = "\"la imaginacion es mas importante que el saber\""

let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//String Vacios
var emptyString = ""
var anotherEmptyString = String()


if emptyString.isEmpty {
    print("Nada que ver aquí")
} else{
    print("El string tiene un valor")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

print (newSomeString)

let aString = "Juan Gabriel"
//aString += " y Ricardo Celis"

var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b) ")
b = a
print("a vale \(a) y b vale \(b) ")
b = "C"
print("a vale \(a) y b vale \(b) ")
a = "D"
print("a vale \(a) y b vale \(b) ")

let name = "Juan Gabriel 😎"
for caracter in name {
    print(caracter)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["J", "u", "a", "n"]
var nameString = String(nameChars)

let compoundName = "Juan " + "Gabriel"

nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)

let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices{
    print("\(greeting[idx]) ", terminator:"\n")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal",
               at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
welcome.removeSubrange(range)

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]

let newString = String(firstPart)

//prefijos y sufijos
let newGreeting = "Hola, soy Juan Gabriel"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("l")

let collection = [
    "Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}
print("El número de escenas del acto 1 es: \(act1SceneCount)")


//representaciones unicode

let ghost = "¡¡Fantasma!! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}