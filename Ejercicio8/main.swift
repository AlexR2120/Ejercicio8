// EJERCICIO 8

struct Reuniones {
    var nombreSala: String
    var nombreReserva: String
    var personas: Int
    var fecha: String
}

// Crear un listado de sala de reuniones (reserva)
var salasReservadas: [Reuniones] = []

// Función para reservar una sala
func reservarSala() {
    print("Introduce el nombre de la sala")
    let nombreSala = readLine() ?? ""
    print("Introduce el nombre del que reserva")
    let nombreReserva = readLine() ?? ""
    print("Introduce el número de personas que acudirán")
    if let personasString = readLine(),let personas = Int(personasString)
    {
        print("Introduce la fecha de la reunión")
        let fecha = readLine() ?? ""
        
        let nuevaSala = Reuniones(nombreSala: nombreSala, nombreReserva: nombreReserva, personas: personas, fecha: fecha)
        salasReservadas.append(nuevaSala)
        print("Sala \(nombreSala) reservada por \(nombreReserva) para \(personas) personas el dia \(fecha)\n")
    }else {
        print("ERROR! El número de personas debe ser un número entero válido")
    }
}
reservarSala()

print("\n--- Lista de Reservas ---")
for sala in salasReservadas {
    print("Nombre de la sala: \(sala.nombreSala)")
    print("Reservado por: \(sala.nombreReserva)")
    print("Número de personas: \(sala.personas)")
    print("Fecha de la reunión: \(sala.fecha)\n")
}

