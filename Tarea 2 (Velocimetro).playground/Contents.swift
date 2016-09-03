//Velocimetro

import Cocoa

enum Velocidades: Int{          //Se crea la enumeración
    case Apagado = 0            //Se le asignan valores a cada estado
    case VelocidadBaja = 20     //Se le asignan valores a cada estado
    case VelocidadMedia = 50    //Se le asignan valores a cada estado
    case VelocidadAlta = 120    //Se le asignan valores a cada estado
    
    
    init(velocidadInicial: Velocidades){        //Se crea el inicializador
        self = velocidadInicial
    }
    
    
    var estado : String {                                            //Cada caso regresa el un String diferente
        switch self {
        case Velocidades.Apagado: return "Apagado";
        case Velocidades.VelocidadBaja: return "Velocidad Baja";
        case Velocidades.VelocidadMedia: return "Velocidad Media";
        case Velocidades.VelocidadAlta: return "Velocidad Alta";
        }
    }
}
class Auto{                                 //Se crea un la clase Auto
    var velocidad: Velocidades
    init(){                                 //Se inicializa
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){    //La función hace el cambio de velocidad
        let velocidadActual = self.velocidad
        switch(self.velocidad){
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        return (velocidadActual.rawValue, velocidadActual.estado)
    }
}


let auto: Auto = Auto()                     //Se crea la instancia de la clase, en pocas palabras el objeto
auto.velocidad
for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("Velocidad: ",resultado.actual, "\t", resultado.velocidadEnCadena)        //Se imprimen los resultados
}



