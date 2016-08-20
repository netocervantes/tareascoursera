//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

for x in 0...100{
    //print (x)
        var a = x%5
    if a == 0{
        print (x,"Bingo!!!") //Aqui se busca saber si el valor de x es multiplo de 5
    }
    
        var b = x%2
    if b == 0{
        print (x, "Par")
    }else if b != 0{
        print (x, "Impar")
    }
    
    
    if x >= 30 && x <= 40{
        print(x, "Viva Swift!!!")
    }
}