# Crear opciones para TipoIdentificacion y SexoBiologico
dni = Opcion.create!(variable: "TipoIdentificacion", nombre: "DNI", valor: 1, descripcion: "Documento Nacional de Identidad", abreviacion: "DNI", habilita: true)
cc  = Opcion.create!(variable: "TipoIdentificacion", nombre: "Cédula de Ciudadanía", valor: 2, descripcion: "Cédula de Ciudadanía", abreviacion: "CC", habilita: true)

masculino = Opcion.create!(variable: "SexoBiologico", nombre: "Masculino", valor: 1, descripcion: "Sexo masculino", abreviacion: "M", habilita: true)
femenino  = Opcion.create!(variable: "SexoBiologico", nombre: "Femenino", valor: 2, descripcion: "Sexo femenino", abreviacion: "F", habilita: true)

# Crear persona usando Devise correctamente
Persona.create!(
  tipo_identificacion_id: dni.id,
  numero_identificacion: "12345678",
  apellido1: "Pérez",
  apellido2: "Gómez",
  nombre1: "Juan",
  nombre2: "Carlos",
  fecha_nacimiento: "1990-01-01",
  sexo_biologico_id: masculino.id,
  direccion: "Calle 123",
  telefono_movil: "3001234567",
  email: "test@example.com",
  password: "123456",
  password_confirmation: "123456"
)
