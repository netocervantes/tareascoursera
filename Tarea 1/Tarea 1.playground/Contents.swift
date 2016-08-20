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
        print (x, "Par")    //Aqui se busca saber si el valor de x es par
    }else if b != 0{
        print (x, "Impar")  //Aqui se busca saber si el valor de x es impar
    }
    
    
    if x >= 30 && x <= 40{
        print(x, "Viva Swift!!!")   //Aqui se busca saber si los valores de x estan en el rango
    }
}

/*Deje todas las condiciones que cada número cumplía porque considere que cada dígito puede cumplir dos condiciones, es por eso que algunos resultados se repiten. Por ejemplo el número 5 es: impar y además múltiplo de cinco por eso también imprime Bingo!!! */