//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velocidadinicial : Velocidades){
     self = velocidadinicial
    }
}

class Auto{
    var velocidad : Velocidades.RawValue
    
    var actual : Int {
        get {
        return velocidad
    }
        set{ velocidad = newValue
        }
    }
    
    init(velocidad : Int, actual : Int){
        self.velocidad = velocidad
        self.actual = actual
        
    }
    
    func cambioDeVelocidades (velocidadinicial : Int) -> (Int, String){
        var mensaje = ""
        
        if (velocidadinicial == Velocidades.Apagado.rawValue) {
            mensaje = "Apagado"
            velocidad = Velocidades.VelocidadBaja.rawValue}
        
        if (velocidadinicial == Velocidades.VelocidadBaja.rawValue) {
            mensaje = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia.rawValue}
        
        if (velocidadinicial == Velocidades.VelocidadMedia.rawValue) {
            mensaje = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta.rawValue}
        
        
        if (velocidadinicial == Velocidades.VelocidadAlta.rawValue) {
                mensaje = "Velocidad Alta"
                velocidad = Velocidades.VelocidadMedia.rawValue}
            
        
        
    return (velocidadinicial, mensaje)
    }
    
}

var auto = Auto(velocidad: Velocidades.VelocidadBaja.rawValue, actual: 0)

var veces = 0...19
for x in veces{

print (auto.cambioDeVelocidades(auto.actual))
}





