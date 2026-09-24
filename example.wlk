class Corsa{
  const capacidad = 4
  method velocidadMaxima() = 150
  const color
  
  method peso() = 1300
  method color() = color
}

class RenaultKwid{

  const peso = 1200
  const tieneTanqueGas 

  method color() ="azul"

  method capacidad() {
    if (tieneTanqueGas){
      return 3
    } else{
      return 4
    }
  }

  method velocidadMaxima(){
    if(tieneTanqueGas){
      return 110
    } else {
      return 120
    }
  }

  method peso(){
    if(tieneTanqueGas){
      return peso + 150
    } else { 
      return peso
    }
  }

}

object traffic{
 method color () = "blanco"
 var interior = interiorComodo
 method cambiarInterior(unInterior) {
  interior = unInterior
 }

var motor= motorPulenta
 method cambiarMotor(unMotor) {
  motor = unMotor
 }

  method capacidad() = interior.capacidad()

  method velocidadMaxima() = motor.velocidadMaxima()

  method peso() = 4000 + (interior.peso() + motor.peso())
}

object interiorComodo{
 method capacidad() = 5
 method peso() = 700
   }

object interiorPopular{
 method capacidad() = 12
 method peso() = 1000
   }

object motorPulenta{
  method peso() = 800
  method velocidadMaxima() = 130
}

object motorBataton{
  method peso() = 800
  method velocidadMaxima() = 130
}
  
  class Dependencia{
    const rodados 
    const cantidadDeEmpleados

    method agregarAFlota(unVehiculo){rodados.add(unVehiculo)}
    method quitarAFlota(unVehiculo){ rodados.remove(unVehiculo)}
    method pesoTotalFlota() = rodados.sum({r => r.peso()})
    method estaBienEquipada() = (rodados.size() <= 3) && (rodados.all(rodados.velocidadMaxima() < 100))
    method capacidadTotalEnColor(color) = (rodados.filter({r=>r.color() == color})).sum({r => r.capacidad()})
    method colorDelRodadoMasRapido()= rodados.max({r =>r.velocidadMaxima()}).color() 
    method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotalFlota()
    method capacidadTotalFlota() = rodados.sum({r=>r.capacidad()})
    method esGrande() = 
  }